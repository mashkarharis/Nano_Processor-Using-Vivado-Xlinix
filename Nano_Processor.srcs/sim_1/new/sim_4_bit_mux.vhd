----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 08:16:13 PM
-- Design Name: 
-- Module Name: sim_4_bit_mux - Behavioral
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

entity sim_4_bit_mux is
--  Port ( );
end sim_4_bit_mux;

architecture Behavioral of sim_4_bit_mux is
 component way8bit4mux 
   Port (   regsel : in STD_LOGIC_VECTOR (2 downto 0);
            reg0 : in STD_LOGIC_VECTOR (3 downto 0);
            reg1 : in STD_LOGIC_VECTOR (3 downto 0);
            reg2 : in STD_LOGIC_VECTOR (3 downto 0);
            reg3 : in STD_LOGIC_VECTOR (3 downto 0);
            reg4 : in STD_LOGIC_VECTOR (3 downto 0);
            reg5 : in STD_LOGIC_VECTOR (3 downto 0);
            reg6 : in STD_LOGIC_VECTOR (3 downto 0);
            reg7 : in STD_LOGIC_VECTOR (3 downto 0);
            out1 : out STD_LOGIC_VECTOR (3 downto 0));
           
end component;

            signal regsel :  STD_LOGIC_VECTOR (2 downto 0);
            signal reg0 :  STD_LOGIC_VECTOR (3 downto 0);
            signal reg1 :  STD_LOGIC_VECTOR (3 downto 0);
            signal reg2 :  STD_LOGIC_VECTOR (3 downto 0);
            signal reg3 :  STD_LOGIC_VECTOR (3 downto 0);
            signal reg4 :  STD_LOGIC_VECTOR (3 downto 0);
            signal reg5 :  STD_LOGIC_VECTOR (3 downto 0);
            signal reg6 :  STD_LOGIC_VECTOR (3 downto 0);
            signal reg7 :  STD_LOGIC_VECTOR (3 downto 0);
            signal out1 :  STD_LOGIC_VECTOR (3 downto 0);


begin

uut : way8bit4mux port map(
            regsel =>regsel,
            reg0 =>reg0,
            reg1 =>reg1,
            reg2 =>reg2,
            reg3 =>reg3,
            reg4 =>reg4,
            reg5 =>reg5,
            reg6 =>reg6,
            reg7 =>reg7,
            out1 =>out1);
            
stiM_PROC: PROCESS
BEGIN

reg0 <= "0000";
reg1 <= "0000";
reg2 <= "0000";
reg3 <= "0000";
reg4 <= "0000";
reg5 <= "0000";
reg6 <= "0000";
reg7 <= "0000";


regsel <= "000";
reg0 <= "0111";
wait for 100 ns;

regsel <= "001";
reg1 <= "0100";
wait for 100 ns;

regsel <= "010";
reg2 <= "0111";
wait for 100 ns;

regsel <= "011";
reg3 <= "0100";
wait for 100 ns;

regsel <= "100";
reg4 <= "1010";
wait for 100 ns;

regsel <= "101";
reg5 <= "1111";
wait for 100 ns;

regsel <= "110";
reg6 <= "0100";
wait for 100 ns;

regsel <= "111";
reg7 <= "1110";
wait;

end process;
end;