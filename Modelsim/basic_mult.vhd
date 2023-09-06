-------------------------------------------------
-- Project : Moltiplicatore a 16bit            --
-- Author :  Brescia Luca                      -- 
--           Loda Michele                      --
--           Pezzottini Simone                 --
-- Date : 	 AY2022/2023                       --
-- Company : UniBS                             --
-- File : 	 basic_mult.vhd       		        --
-------------------------------------------------

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity basic_mult is
  port
  (
    CLOCK_50 : in std_logic;                        --! Clock di sistema a 50 MHz
    SW       : in std_logic_vector(9 downto 0);     --! Dati in ingresso da interruttore
    KEY      : in std_logic_vector(2 downto 0);     --! Segnali di controllo push buttons
    LEDG     : out std_logic_vector(9 downto 0);    --! Segnali di output per i LED
    GPIO_1   : inout std_logic_vector(31 downto 0)  --! Segnali di input/output GPIO
  );
end basic_mult;

architecture top_arch of basic_mult is
  --! Definizioni costanti
  constant DATA_W         : integer := 32;  --! Dimensione del dato
  constant Nbit           : integer := 5;   --! Numero di bit per contenere il dato

  --! Stati per la macchina a stati
  type my_states is (STATE_WAIT_NEW_DATA, STATE_START_MULTIPLY, STATE_MULT_READY, STATE_DATA_SENT); --! Stati possibili per la macchina a stati
  signal current_state : my_states;   --! Stato corrente della macchina a stati
  signal next_state: my_states;       --! Prossimo stato della macchina a stati
  --! Definizioni signals
  signal pb0_synchronizer : std_logic_vector(2 downto 0);               --! Sincronizzatore del pushbutton per segnale di reset
  signal SYS_SPI_SCK      : std_logic                          := '0';  --! Pin di clock SPI
  signal SYS_SPI_MOSI     : std_logic                          := '0';  --! Pin di output dati SPI
  signal SYS_SPI_MISO     : std_logic                          := '0';  --! Pin di input dati SPI
  signal spi_data_in      : std_logic_vector(DATA_W - 1 downto 0);      --! Dati in ingresso SPI
  signal spi_data_out     : std_logic_vector(DATA_W - 1 downto 0);      --! Dati in uscita SPI
  signal mult_data_a      : std_logic_vector(DATA_W/2 - 1 downto 0);    --! Copia del dato in ingresso
  signal mult_data_b      : std_logic_vector(DATA_W/2 - 1 downto 0);    --! Copia del dato in ingresso
  signal result           : std_logic_vector(DATA_W - 1 downto 0);      --! Risultato della moltiplicazione
  signal reset            : std_logic                         := '0';   --! Flag di reset
  signal enable_clk       : std_logic                         := '0';   --! Flag di abilitazione clock per l'entity moltiplicatore
  signal newdata          : std_logic                         := '0';   --! Flag di presenza nuovo dato da inviare
  signal multready        : std_logic                         := '0';   --! Flag di segnalazione dato moltiplicato corretto
  signal datasent         : std_logic                         := '0';   --! Flag di invio corretto del dato

begin
  --! Assegnazione dei segnali SPI ai pin fisici GPIO
  SYS_SPI_SCK  <= GPIO_1(7);  --! Segnale di clock spi
  SYS_SPI_MOSI <= GPIO_1(5);  --! Segnale di input per FPGA (Slave)
  GPIO_1(3) <= SYS_SPI_MISO;  --! Segnale di output per FPGA (Slave)
  
  --! Gestione del lampeggio del LED 
  blink_hb : entity work.blink_heartbeat port map(
    CLK => CLOCK_50,
    LED => LEDG(0)
    );

  --! Istanza del modulo SPI
  spi_inst : entity work.spi
    generic
    map (
    DATA_W => 32,
    Nbit   => 5
    )
    port
    map (
    CLK      => CLOCK_50,
    reset    => reset,
    DATA_IN  => spi_data_out,
    DATA_OUT => spi_data_in,
    RD       => datasent,
    WR       => newdata,
    SCK      => SYS_SPI_SCK,
    MOSI     => SYS_SPI_MOSI,
    MISO     => SYS_SPI_MISO
    );

  --! Istanza del moltiplicatore 16x16
  mult_inst : entity work.mult_sgn_break_16x16
    port
    map (
    i_clk  => CLOCK_50,
    i_rstb => reset,
    i_en   => enable_clk,
    i_ma   => mult_data_a,
    i_mb   => mult_data_b,
    o_m    => result,
    o_rdy  => multready
    );

  --! Processo principale per la gestione della macchina a stati per la realizzazione del moltiplicatore senza segno spi
  --! Attende un dato in ingresso su spi formattato come segue: (MOLTIPLICATORE << 16 | MOLTILPICANDO) dove moltiplicando e moltiplicatore sono due interi senza segno a 16 bit
  main_process : process (current_state, newdata, multready, datasent)
  begin
	--! Gestione della macchina a stati
	case current_state is
	  --! Attesa del nuovo dato
	  when STATE_WAIT_NEW_DATA =>
		 enable_clk <= '0';                    --! Reset clk dell'istanza moltiplicatore
		 LEDG(9 downto 2) <= (others => '0');  --! Reset dei led presenti su FPGA
     next_state <= STATE_WAIT_NEW_DATA;
		 --! Controllo presenza flag di nuovo dato e che il dato sia diverso da 0
		 if newdata = '1' and to_integer(unsigned(spi_data_in)) /= 0  then
			--! Divisione del dato di ingresso a 32bit come dato_a e dato_b
			mult_data_a <= spi_data_in(15 downto 0);  --! Moltiplicando parte bassa (0 - 15) del dato in ingresso
			mult_data_b <= spi_data_in(31 downto 16); --! Moltiplicatore parte alta (16- 31) del dato in ingresso
			next_state <= STATE_START_MULTIPLY;       --! Avanzamento di stato della macchina a stati
		 end if;

	  --! Avvio moltiplicazione e attesa completamento
	  when STATE_START_MULTIPLY =>
		 enable_clk <= '1';  --! Abilitazione del segnale di clock per la entity mult_sgn_break_16x16
     next_state <= STATE_START_MULTIPLY;
		 --! Attesa flag moltiplicazione terminata
		 if multready = '1' then
			spi_data_out <= result;           --! Copia del risultato sul signal che invierÃ  su spi il valore
			next_state <= STATE_MULT_READY;   --! Avanzamento di stato della macchina a stati
		 end if;

	  --! Moltiplicazione completata e attesa di fine invio del dato su spi
	  when STATE_MULT_READY =>
		 enable_clk <= '0'; --! Arresto del segnale di clock per la entity mult_sgn_break_16x16
		 next_state <= STATE_MULT_READY; 
		 --! Attesa flag dato inviato
		 if datasent = '1' then
			next_state <= STATE_DATA_SENT;    --! Avanzamento di stato della macchina a stati
		 end if;

	  --! Termine delle operazioni
	  when STATE_DATA_SENT =>
	  LEDG(7) <= '1'; --! Segnalazione tramite accensione del led7 delle operazioni concluse
    next_state <= STATE_DATA_SENT;--! Loopback del nuovo stato
	  --! Se il flag di dato inviato Ã¨ attivo
	  if datasent = '1' then
		 LEDG(8) <= '1'; --! Segnalazione tramite accensione del led8 del corretto invio del dato
	  end if;
	  when others =>
		 LEDG(9) <= '1'; --! Segnalazione tramite accensione del led9 della metastabilita'
	end case;
  end process;

  --! Gestione dell'avanzamento di stato della macchina a stati
  state_memory : process (CLOCK_50, reset) --! Stati possibili per la macchina a stati
  begin
    --! Gestione del segnale di reset
    if reset = '1' then
      current_state <= STATE_WAIT_NEW_DATA;    --! Reset macchina a stati
    elsif (rising_edge(CLOCK_50)) then
      current_state <= next_state;			     --! Avanzamento di stato
    end if;
  end process;
  
  --! Gestione del segnale di reset
  reset_handle : process (CLOCK_50, KEY)
  begin
    --! Trigger delle operazioni sul fronte positivo del clock FPGA
    if (rising_edge(CLOCK_50)) then
      --! Sincronizzazione del pushbutton0 e generazione del segnale di reset
      pb0_synchronizer(2 downto 1) <= pb0_synchronizer(1 downto 0);
      pb0_synchronizer(0)          <= KEY(0);

      --! Fronte positivo indica che il pushbutton0 e' stato rilasciato
      if pb0_synchronizer(2 downto 1) = "01" then
        LEDG(1) <= '1';   --! Segnalazione tramite accensione del led1 l'attivazione del segnale di reset
        reset   <= '1';   --! Attivazione segnale di reset
      --! Se e' stato attivato al clock precedente il segnale di reset
      elsif (reset = '1') then
        LEDG(1) <= '0';   --! Segnalazione tramite spegnimento del led1 la disattivazione del segnale di reset
        reset   <= '0';   --! Disattivazione segnale di reset
      end if;
    end if;
  end process;
end top_arch;