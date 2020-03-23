----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2020 03:28:38 PM
-- Design Name: 
-- Module Name: TB_addsubunit - Behavioral
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

entity TB_addsubunit is
--  Port ( );
end TB_addsubunit;

architecture Behavioral of TB_addsubunit is
component fourbitaddsubunit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cal_Control : in STD_LOGIC;
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0));
end component;

           signal A : STD_LOGIC_VECTOR (3 downto 0);
           signal B : STD_LOGIC_VECTOR (3 downto 0);
           signal Cal_Control : STD_LOGIC;
           signal Overflow : STD_LOGIC;
           signal Zero : STD_LOGIC;
           signal S : STD_LOGIC_VECTOR (3 downto 0);


begin

uut : fourbitaddsubunit port map(
            A =>A,
            B=>B,
            Cal_Control => Cal_Control,
            Overflow => Overflow,
            zero => zero,
            s=>s);
            
stiM_PROC: PROCESS
BEGIN


A <= "1110";
B <= "1111";
Cal_control <='0';
wait for 100 ns;

A <= "1011";
B <= "0011";
Cal_control <='0';
wait for 100 ns;

A <= "1101";
B <= "1011";
Cal_control <='1';
wait for 100 ns;
A <= "1101";
B <= "1011";
Cal_control <='0';
wait for 100 ns;
A <= "1101";
B <= "1001";
Cal_control <='0';
wait for 100 ns;

A <= "0000";
B <= "0000";
Cal_control <='0';
wait for 100 ns;
A <= "1111";
B <= "1111";
Cal_control <='1';
wait for 100 ns;
A <= "0011";
B <= "0111";
Cal_control <='1';
wait;

end process;
end;