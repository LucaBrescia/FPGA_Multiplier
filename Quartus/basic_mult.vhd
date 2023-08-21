-------------------------------------------------
-- Project : Moltiplicatore a 16bit            --
-- Author :  Brescia Luca                      -- 
--           Loda Michele                      --
--           Pezzottini Simone                 --
-- Date : AY2022/2023                          --
-- Company : UniBS                             --
-- File : basic_mult.vhd           		           --
-------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity basic_mult is
	port(
		CLOCK_50 : in  STD_LOGIC;  -- Clock di sistema a 50 MHz
		RST : in  STD_LOGIC;  -- Segnale di reset asincrono
		SW: in std_logic_vector(9 downto 0);  -- Dati in ingresso da interruttore
		KEY: in std_logic_vector(2 downto 0);  -- Segnali di controllo da tastiera
		LEDG: out std_logic_vector(9 downto 0);  -- Segnali di output per i LED
		GPIO_1: inout std_logic_vector(31 downto 0)  -- Segnali di input/output GPIO
	);
end basic_mult;

architecture top_arch of basic_mult is
  constant DATA_W:      integer := 32;    -- Dimensione del dato
  constant Nbit:        integer := 5;     -- Numero di bit per contenere il dato
  constant all_ones : unsigned(Nbit-1 downto 0) := (others => '1');
  signal counter: unsigned(Nbit-1 downto 0) := (others => '0'); -- Contatore per il controllo dell'ACK
  signal clk : STD_LOGIC;  -- Segnale di clock
  
  -- Definizione dei pin SPI
  signal SYS_SPI_SCK : std_logic;  -- Pin di clock SPI
  signal SYS_SPI_MOSI : std_logic;  -- Pin di output dati SPI
  signal SYS_SPI_MISO : std_logic;  -- Pin di input dati SPI
  signal data_in : STD_LOGIC_VECTOR (31 downto 0);  -- Dati in ingresso
  signal data_out : STD_LOGIC_VECTOR (31 downto 0);  -- Dati in uscita
  signal ack : STD_LOGIC := '0';  -- Segnale di ACK
  signal ack_sent : STD_LOGIC := '0';  -- Flag per l'ACK inviato
  signal result : STD_LOGIC_VECTOR (31 downto 0);  -- Risultato della moltiplicazione

  signal spi_clk : STD_LOGIC := '0';  -- Segnale di clock per il modulo SPI
  signal spi_rst : STD_LOGIC := '0';  -- Segnale di reset per il modulo SPI
  signal spi_data_out : STD_LOGIC_VECTOR (31 downto 0);  -- Dati in uscita per il modulo SPI
  signal spi_data_in : STD_LOGIC_VECTOR (31 downto 0);  -- Dati in ingresso per il modulo SPI
  signal spi_rd : STD_LOGIC := '0';  -- Segnale di lettura per il modulo SPI
  signal spi_wr : STD_LOGIC := '0';  -- Segnale di scrittura per il modulo SPI
  
begin
  -- Assegnazione clock 
  clk <= CLOCK_50;
  -- Assegnazione dei pin fisici ai segnali SPI
  SYS_SPI_SCK <= GPIO_1(7);
  SYS_SPI_MOSI <= GPIO_1(5);
  SYS_SPI_MISO <= GPIO_1(3);
  
  -- Istanza del modulo SPI
  spi_inst: entity work.spi
    generic map (
      DATA_W => DATA_W,
      Nbit => Nbit
    )
    port map (
      CLK => spi_clk,
      reset => spi_rst,
      DATA_IN => spi_data_in,
      DATA_OUT => spi_data_out,
      RD => spi_rd,
      WR => spi_wr,
      SCK => SYS_SPI_SCK,
      MOSI => SYS_SPI_MOSI,
      MISO => SYS_SPI_MISO
    );

  -- Moltiplica i due input
  mult_inst: entity work.mult_sgn_break_16x16
    port map (
      i_clk  => CLK,
      i_rstb => RST,
      i_ma   => spi_data_in(15 downto 0),
      i_mb   => result(15 downto 0),
      o_m    => result
    );
    
  -- Processo principale
  process (CLK, RST)
  begin
    if (RST = '1') then
      spi_clk <= '0';  -- Inizializza il segnale di clock del modulo SPI a zero
      spi_rst <= '1';  -- Applica il segnale di reset al modulo SPI
      data_in <= (others => '0');  -- Inizializza i dati in ingresso a zero
      ack_sent <= '0';  -- Resetta il flag di ACK inviato
    elsif (rising_edge(CLK)) then
      spi_clk <= not spi_clk;  -- Inverte il segnale di clock del modulo SPI
      spi_rst <= RST;  -- Applica il segnale di reset al modulo SPI
      
      if (spi_clk = '1') then
        if (ack_sent = '0') then
          if (spi_rd = '1') then  -- Dati ricevuti dal master
            if (counter = all_ones) then  -- Controlla se il contatore raggiunge 15
                ack <= '1';  -- Invia l'ACK
                counter <= (others => '0');  -- Resetta il contatore
                data_out <= (others => '0');  -- Prepara i dati da inviare
                ack_sent <= '1';  -- Imposta il flag di ACK inviato
            else
                ack <= '0';  -- Non inviare ancora l'ACK
                counter <= counter + 1;  -- Incrementa il contatore
            end if;
          else
            ack <= '0';  -- Non inviare l'ACK se non sono stati ricevuti dati
          end if;
        else  -- L'ACK è stato inviato, invia i dati
          data_out <= result;
          ack <= '0';  -- Non inviare l'ACK
        end if;
      end if;
      
    end if;
  end process;

  spi_data_in <= data_out;

end top_arch;
