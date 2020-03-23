----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 09:54:38 PM
-- Design Name: 
-- Module Name: TB_Programrom - Behavioral
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

entity TB_Programrom is
--  Port ( );
end TB_Programrom;

architecture Behavioral of TB_Programrom is
 component program_rom 
   Port (   regsel : in STD_LOGIC_VECTOR (2 downto 0);
            out1 : out STD_LOGIC_VECTOR (11 downto 0));
           
end component;

            signal regsel :  STD_LOGIC_VECTOR (2 downto 0);
            signal out1 :  STD_LOGIC_VECTOR (11   downto 0);


begin

uut : program_rom port map(
            regsel =>regsel,
            out1 =>out1);
            
stiM_PROC: PROCESS
BEGIN


regsel <= "110";
wait for 100 ns;

regsel <= "111";
wait;

end process;
end;