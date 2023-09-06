library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity send_bits is
  generic (
    DATA_W : integer := 8;  -- data width in bits
    Nbit : integer := 3
  );
  port (
    bit_da_inviare : in std_logic_vector(DATA_W-1 downto 0);
    clk : in std_logic;
    reset : in std_logic;
    dati_out : out std_logic
  );
end entity send_bits;

architecture Behavioral of send_bits is
  signal counter : integer range 0 to DATA_W := 0;
  signal dati_da_inviare : std_logic_vector(DATA_W-1 downto 0);
  signal dati_inviati : std_logic_vector(DATA_W-1 downto 0);
begin
  dati_da_inviare <= bit_da_inviare;
  process(clk, reset)
  begin
    if reset = '1' then
      counter <= 0;
      dati_inviati <= (others => '0');
      dati_out <= '0';
    elsif rising_edge(clk) then
      if counter < DATA_W then
        dati_out <= dati_da_inviare(DATA_W-1-counter);
        dati_inviati(DATA_W-1-counter) <= dati_da_inviare(DATA_W-1-counter);
        counter <= counter + 1;
      end if;
    end if;
  end process;
end architecture Behavioral;
