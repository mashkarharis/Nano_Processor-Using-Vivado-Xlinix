----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2020 05:57:14 PM
-- Design Name: 
-- Module Name: Decoder_2_to_4_TB - Behavioral
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


entity Decoder_2_to_4_TB is
--  Port ( );
end Decoder_2_to_4_TB;

architecture Behavioral of Decoder_2_to_4_TB is

component Decoder_2_to_4 
    port ( I : in STD_logic_vector (1 downto 0);
           EN: in std_logic;
           y: out std_logic_vector (3 downto 0));
end component;

signal I1 :STD_logic_vector (1 downto 0):= (others => '0');
signal EN1 :STD_logic:= '0';

signal y1 :STD_logic_vector (3 downto 0);
begin

uut: Decoder_2_to_4 port map(
    I => I1,
    EN => EN1,
    Y => Y1
    );
    
process
    begin
            EN1 <= '1';
            
            wait for 100 ns;
            I1 <= "00";
            wait for 100 ns;
            I1 <= "01";
            wait for 100 ns;
            I1 <= "10";
            wait for 100 ns;
            I1 <= "11";
            wait;
            end process;
end Behavioral;
