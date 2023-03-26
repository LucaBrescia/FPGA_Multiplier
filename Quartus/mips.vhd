-------------------------------------------------
-- Project : MIPS      		                   --
-- Author : Asino Condor                       --
-- Date : AY2021/2022                          --
-- Company : UniBS                             --
-- File : mips.vhd   		                   --
-------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity mips is
	port(
		CLOCK_50: in std_logic;
		SW: in std_logic_vector(9 downto 0);
		KEY: in std_logic_vector(2 downto 0);
		LEDG: out std_logic_vector(9 downto 0);
		GPIO_1: inout std_logic_vector(31 downto 0));
		result : in STD_LOGIC_VECTOR (7 downto 0);
		SCK : in  STD_LOGIC;
		MOSI : in  STD_LOGIC;
		MISO : out  STD_LOGIC;
		rd : out  STD_LOGIC;
		wr : out  STD_LOGIC;
		data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end mips;

architecture top_arch of mips is
	 signal clk, rst, done : std_logic;
	 signal mplier   : std_logic_vector(15 downto 0);
	 signal mcand    : std_logic_vector(15 downto 0);
	 signal product  : std_logic_vector(31 downto 0);


begin
	clk <= CLOCK_50;
	rst <= KEY(2);
	LEDG(9) <= done;
	
	
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

	mul16_arch : entity work.mult_sgn_break_16x16
	port map(
	  i_clk => CLOCK_50,
	  i_rstb => rst,
     i_ma => mplier,
     i_mb => mcand,
     o_m  => product
	);

			
	mplier <= GPIO_1(3);
	mcand <= GPIO_1(3);
	product(31 downto 16) <= GPIO_1(5);
	product(15 downto 0) <= GPIO_1(5);
	GPIO_1(9) <= GPIO_1(7);
	
	
	
end top_arch;