----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 09:12:23 AM
-- Design Name: 
-- Module Name: bit_3_adder_sim - Behavioral
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

entity bit_3_adder_sim is
   
end bit_3_adder_sim;

architecture Behavioral of bit_3_adder_sim is
 component bit_3_adder 
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (2 downto 0));  
end component;


signal A : std_logic_vector (2 downto 0 ) := (others => '0');
signal S : std_logic_vector (2 downto 0 );


begin
uut : bit_3_adder port map
( A=> A,
S => S);
stiM_PROC: PROCESS
BEGIN

A<= "000";
wait for 100 ns;
A<= "001";
wait for 100 ns;
A<= "010";
wait for 100 ns;
A<= "011";
wait for 100 ns;
A<= "100";
wait for 100 ns;
A<= "101";
wait for 100 ns;
A<= "110";
wait for 100 ns;
A<= "111";
wait;

end process;
end;