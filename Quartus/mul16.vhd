-------------------------------------------------
-- Project : Moltiplicatore a 16bit            --
-- Author :  Brescia Luca                      -- 
--           Loda Michele                      --
--           Pezzottini Simone                 --
-- Date : AY2022/2023                          --
-- Company : UniBS                             --
-- File : mul16.vhd           		             --
-------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult_sgn_break_16x16 is
  port ( 
    i_clk  : in  std_logic;
    i_rstb : in  std_logic;
    i_ma   : in  std_logic_vector(15 downto 0);
    i_mb   : in  std_logic_vector(15 downto 0);
    o_m    : out std_logic_vector(31 downto 0)
  );
end mult_sgn_break_16x16;

architecture rtl of mult_sgn_break_16x16 is
  -- Segnali intermedi per il calcolo della moltiplicazione
  signal r_ma_hi  : signed(7 downto 0);   -- Parte alta del primo operandi (A[15:8])
  signal r_ma_lo  : signed(8 downto 0);   -- Parte bassa del primo operandi con bit di segno (A[7:0])
  signal r_mb_hi  : signed(7 downto 0);   -- Parte alta del secondo operandi (B[15:8])
  signal r_mb_lo  : signed(8 downto 0);   -- Parte bassa del secondo operandi con bit di segno (B[7:0])
  signal r_m_hi   : signed(15 downto 0);  -- Moltiplicazione tra parti alte (A[15:8] * B[15:8])
  signal r_m_md   : signed(16 downto 0);  -- Moltiplicazione tra parti alte e basse sommate (A[15:8] * B[7:0] + A[7:0] * B[15:8])
  signal r_m_lo   : signed(17 downto 0);  -- Moltiplicazione tra parti basse (A[7:0] * B[7:0]) con bit di segno esteso
  signal r_m      : signed(31 downto 0);  -- Risultato della moltiplicazione finale

begin
  o_m <= std_logic_vector(r_m);  -- Assegnamento del risultato alla porta di output o_m

  -- Calcolo della moltiplicazione a 16 bit
  r_m_hi <= r_ma_hi * r_mb_hi;
  r_m_md <= r_ma_hi * r_mb_lo + r_mb_hi * r_ma_lo;
  r_m_lo <= r_ma_lo * r_mb_lo;

  p_mult : process(i_clk, i_rstb)
  begin
    if (i_rstb = '1') then
      -- Reset dei segnali intermedi
      r_ma_hi <= (others => '0');
      r_ma_lo <= (others => '0');
      r_mb_hi <= (others => '0');
      r_mb_lo <= (others => '0');
      r_m     <= (others => '0');
    elsif (rising_edge(i_clk)) then
      -- Assegnamento dei valori ai segnali intermedi durante il ciclo di clock
      r_ma_hi <= signed(i_ma(15 downto 8));      -- Assegnamento della parte alta del primo operandi
      r_ma_lo <= signed('0' & i_ma(7 downto 0)); -- Assegnamento della parte bassa del primo operandi con estensione del bit di segno
      r_mb_hi <= signed(i_mb(15 downto 8));      -- Assegnamento della parte alta del secondo operandi
      r_mb_lo <= signed('0' & i_mb(7 downto 0)); -- Assegnamento della parte bassa del secondo operandi con estensione del bit di segno
      r_m     <= r_m_hi & "0000000000000000" + resize(r_m_md & "00000000", 32) + resize(r_m_lo, 32);  -- Calcolo del risultato finale della moltiplicazione
    end if;
  end process p_mult;
end rtl;
