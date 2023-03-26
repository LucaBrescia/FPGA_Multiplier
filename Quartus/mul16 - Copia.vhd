-------------------------------------------------
-- Project : MIPS      		                   --
-- Author : Asino Condor                       --
-- Date : AY2021/2022                          --
-- Company : UniBS                             --
-- File : mips.vhd   		                   --
-------------------------------------------------

library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult_sgn_break_16x16 is
port ( 
  i_clk      : in  std_logic;
  i_rstb     : in  std_logic;
  i_ma       : in  std_logic_vector(15 downto 0);
  i_mb       : in  std_logic_vector(15 downto 0);
  o_m        : out std_logic_vector(31 downto 0));
end mult_sgn_break_16x16;

architecture rtl of mult_sgn_break_16x16 is
-- A[15:0] x B[15:0] = (A[15:8] x B[15:8] x 2^16) +(A[15:8] x B[7:0] + A[7:0] x B[15:8] )x2^8 + A[7:0] x B[7:0]
function sign_extend(signal_in : signed; extend_length : natural) return signed is
begin
    if signal_in(signal_in'high) = '0' then
        return resize(signal_in, extend_length);
    else
        return resize((signal_in - 1), extend_length);
    end if;
end function;

signal r_ma_hi       : signed( 7 downto 0):= (others => '0');
signal r_ma_lo       : signed( 8 downto 0):= (others => '0'); -- MSB sign bit
signal r_mb_hi       : signed( 7 downto 0):= (others => '0');
signal r_mb_lo       : signed( 8 downto 0):= (others => '0');  -- MSB sign bit

signal r_m_hi        : signed(15 downto 0):= (others => '0');  -- 8x8 => 16 bit
signal r_m_md        : signed(16 downto 0):= (others => '0');  -- 8x8 => 16 bit + 8x8=> 17 bit ==>16 bit + (carry)
signal r_m_lo        : signed(17 downto 0):= (others => '0');  -- 9x9 => 16 + 2 sgn bit
signal r_m           : signed(31 downto 0):= (others => '0');

begin

--o_m  <= std_logic_vector(resize(r_m, 32)); -- Resize to 32 bit
-- Check for overflow and truncate to 32 bits
--r_m <= resize((resize(r_m_hi, 16) & r_m_md(16 downto 1) & r_m_lo(17)),32);   -- Multiply
r_m <= resize(sign_extend(r_m_hi, 16) & sign_extend(r_m_md(16 downto 1), 16) & sign_extend(r_m_lo(17 downto 0), 16), 32);
o_m <= std_logic_vector(r_m);
r_m_hi        <= r_ma_hi * r_mb_hi;
r_m_md        <= r_ma_hi * r_mb_lo + r_mb_hi * r_ma_lo;
r_m_lo        <= r_ma_lo * r_mb_lo;
    

p_mult : process(i_clk,i_rstb)
begin
  if(i_rstb='1') then
    r_ma_hi       <= (others=>'0');
    r_ma_lo       <= (others=>'0');
    r_mb_hi       <= (others=>'0');
    r_mb_lo       <= (others=>'0');
    r_m           <= (others=>'0');
  elsif(rising_edge(i_clk)) then
    r_ma_hi       <= signed(i_ma(15 downto 8));
    r_ma_lo       <= signed('0'&i_ma( 7 downto 0));
    r_mb_hi       <= signed(i_mb(15 downto 8));
    r_mb_lo       <= signed('0'&i_mb( 7 downto 0));
    
  end if;
end process p_mult;

end rtl;