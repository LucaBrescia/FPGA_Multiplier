library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_mult is
  port (
    i_clk:      in  std_logic;
    i_rstb:     in  std_logic;
    i_spi_sck:  in  std_logic;
    i_spi_mosi: in  std_logic;
    o_spi_miso: out std_logic;
    o_m:        out std_logic_vector(31 downto 0)
  );
end spi_mult;

architecture rtl of spi_mult is
  signal s_spi_miso:   std_logic;
  signal s_spi_cs:     std_logic;
  signal s_data_ready: std_logic;
  signal s_data_valid: std_logic;
  signal s_data_in:    std_logic_vector(15 downto 0);
  signal s_data_out:   std_logic_vector(31 downto 0);

begin

  -- SPI interface
  process (i_clk) is
  begin
    if (rising_edge(i_clk)) then
      if (i_spi_sck = '1') then
        -- Handle CS signal
        if (s_spi_cs = '1' and i_spi_mosi = '0') then
          s_spi_cs <= '0';
          s_data_ready <= '1';
        elsif (s_spi_cs = '0' and i_spi_mosi = '1') then
          s_spi_cs <= '1';
        end if;

        -- Handle data in
        if (s_spi_cs = '0' and s_data_ready = '1') then
          s_data_in <= i_spi_mosi & s_data_in(14 downto 0);
          if (s_data_in(15) = '1') then
            s_data_ready <= '0';
            s_data_valid <= '1';
          end if;
        end if;

        -- Handle data out
        if (s_spi_cs = '0' and s_data_valid = '1') then
          s_data_out <= std_logic_vector(signed(s_data_in) * signed(s_data_in));
          o_spi_miso <= s_data_out(31);
          s_data_out <= s_data_out(30 downto 0);
          s_data_valid <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Multiply the two inputs
  mult_inst: entity work.mult_sgn_break_16x16
    port map (
      i_clk  => i_clk,
      i_rstb => i_rstb,
      i_ma   => s_data_in,
      i_mb   => s_data_in,
      o_m    => s_data_out
    );

  -- Output the result
  o_m <= s_data_out;

end rtl;
