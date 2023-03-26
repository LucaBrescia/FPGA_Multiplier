-------------------------------------------------
-- Project : Moltiplicatore a 16bit            --
-- Author :  Brescia Luca                      -- 
--           Loda Michele                      --
--           Pezzottini Simone                 --
-- Date : AY2022/2023                          --
-- Company : UniBS                             --
-- File : tb_spi.vhd           		             --
-------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_spi is
end tb_spi;

architecture sim of tb_spi is
  -- COSTANTI
  constant clk_period:  integer := 10;    -- ns
  constant sck_period:  integer := 100;   -- ns
  constant data1:       integer := 15;    -- max 65535
  constant data2:       integer := 18;    -- max 65535
  constant DATA_W:      integer := 32;    -- dimensione del dato
  constant Nbit:        integer := 5;     -- numero di bit per contenere il dato

  signal clk:         std_logic := '0';
  signal reset:       std_logic := '0';
  signal reset_sim:   std_logic := '1';
  signal SCK:         std_logic := '0';
  signal stop_SCK:    boolean   := false;
  signal shift_reg :  std_logic := '0';
  signal MOSI:        std_logic := '0';
  signal MISO:        std_logic := '0';
  signal rd_local: std_logic    := '0';
  signal wr_local: std_logic    := '0';
  signal data_in:     std_logic_vector(DATA_W-1 downto 0);
  signal data_out:    std_logic_vector(DATA_W-1 downto 0);
  signal local_din1 : std_logic_vector((DATA_W/2)-1 downto 0);
  signal local_din2 : std_logic_vector((DATA_W/2)-1 downto 0);
  signal local_dout : std_logic_vector(DATA_W-1 downto 0);
  
  


begin
  MOSI <= shift_reg;
  --reset_sim <= wr_local;
  dut: entity work.spi
    generic map (
      DATA_W => DATA_W,
      Nbit => Nbit
    )
    port map (
      clk => clk,
      reset => reset_sim,
      data_in => data_in,
      data_out => data_out,
      rd => rd_local,
      wr => wr_local,
      SCK => SCK,
      MOSI => MOSI,
      MISO => MISO
    );

  -- Multiply the two inputs
  mult_inst: entity work.mult_sgn_break_16x16
    port map (
      i_clk  => clk,
      i_rstb => reset,
      i_ma   => local_din1,
      i_mb   => local_din2,
      o_m    => local_dout
    );

tx: entity work.send_bits
    generic map (
      DATA_W => DATA_W,
      Nbit => Nbit
    )
    port map (
      clk => SCK,
      reset => reset_sim,
      bit_da_inviare => data_in,
      dati_out => shift_reg
     );
	 
  process
  begin
    reset <= '1';
    reset_sim <= '1';
    wait for 10 ns;
    reset <= '0';
    reset_sim <= '0';
    wait for 10 ns;

    -- invio mcand = 3000 (0x0BB8)
    data_in <= std_logic_vector(to_unsigned(data1, DATA_W));
    
    --wr <= '1';
    wait until wr_local = '1';
    wait until wr_local = '0';
    local_din1 <= data_out((DATA_W/2)-1  downto 0);
    stop_SCK <= true;
    reset_sim <= '1';
    wait for 25 ns;
    data_in <= std_logic_vector(to_unsigned(data2, DATA_W));
    wait for 10 ns;
    reset_sim <= '0';
    stop_SCK <= false;
    --wr <= '0';
    --wait for 10 ns;
    -- invio mplier = 2 (0x0002)
    
    --wr <= '1';
    wait until wr_local = '1';
    wait until wr_local = '0';
    local_din2 <= data_out((DATA_W/2)-1 downto 0); 
    stop_SCK <= true;
    reset_sim <= '1';
    wait for 30 ns; -- Aggiunto ritardo
    reset_sim <= '0';
    stop_SCK <= false;
    -- leggo il risultato
    --rd <= '1';
    wait until wr_local = '1';
    wait for 100 ns;
    --data_out <= local_dout;
    -- visualizzo il risultato
    report "Risultato: " & integer'image(to_integer(unsigned(local_dout)));
    
    wait;
  end process;

  process
    constant mWait: integer := clk_period/2;
    constant period: time := mWait * 1 ns;
  begin
    clk <= '0';
    loop
      wait for period;
      clk <= not clk;
    end loop;
  end process;

  process
    constant mWait: integer := clk_period/2;
    constant period: time := mWait * 1 ns;
  begin
    SCK <= '0';
    loop
      while not stop_SCK loop
        wait for period;
        SCK <= not SCK;
      end loop;
      SCK <= '0';
      wait for period;
    end loop;
  end process;
end sim;
