----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/21/2020 05:21:11 PM
-- Design Name: 
-- Module Name: TB_Micro_Processor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Micro_Processor is
--  Port ( );
end TB_Micro_Processor;

architecture Behavioral of TB_Micro_Processor is
component Micro_Processor is
    Port ( Clockinn : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC;
           PCVAL : out STD_LOGIC_VECTOR (2 downto 0);
           To_Leds : out STD_LOGIC_VECTOR (3 downto 0));
end component;
           signal PCVAL : STD_LOGIC_VECTOR (2 downto 0);
           signal Clock : STD_LOGIC;
           signal Reset :  STD_LOGIC;
           signal Overflow :  STD_LOGIC;
           signal Zero :  STD_LOGIC;
           signal To_Leds :  STD_LOGIC_VECTOR (3 downto 0);
           constant clk_period : time := 10 ns;

begin


uut : Micro_Processor Port map ( 
           Clockinn=>Clock,
           Reset=>Reset,
           Overflow=>Overflow,
           Zero=>Zero,
           PCVAL=>PCVAL,
           To_Leds=>To_Leds);
           
counte_process :process
           begin
            clock <='0';
            wait for clk_period/2;
            clock <='1';
            wait for clk_period/2;
            end process; 
stiM_PROC :process
             begin
           
           reset<='1';
           wait for 10ns;
           reset<='0';
           wait;
            
            
            
            
                   
end process;                      
end;