-------------------------------------------------
-- Project : MIPS      		                   --
-- Author : Asino Condor                       --
-- Date : AY2021/2022                          --
-- Company : UniBS                             --
-- File : mips.vhd   		                   --
-------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity top is
    signal clk      : out std_logic;
    signal mplier   : out std_logic_vector(7 downto 0);
    signal mcand    : out std_logic_vector(15 downto 8);
    signal product  : in  std_logic_vector(15 downto 0);
	port(
		CLOCK_50: in std_logic;
		SW: in std_logic_vector(9 downto 0);
		KEY: in std_logic_vector(2 downto 0);
		LEDG: out std_logic_vector(9 downto 0);
		GPIO_1: inout std_logic_vector(31 downto 0));
end top;

architecture top_arch of top



begin

	spi0:entity work.basic_spi 
	generic map(
			DATA_W 	=> 16,			-- FIFO and SPI data width in bits
			Nbit 	=> 4 					-- log2(data width)
			)
	port map(
		OSC_FPGA => CLOCK_50,
		PB => KEY(1 downto 0),
		SYS_SPI_MOSI => GPIO_1(5),
		SYS_SPI_SCK => GPIO_1(7),
		SYS_SPI_MISO => GPIO_1(3),
		LED => LEDG(1 downto 0)
		);
		
		GPIO_1(13) <= GPIO_1(3);
		GPIO_1(11) <= GPIO_1(5);
		GPIO_1(9) <= GPIO_1(7);
		

end top_arch;