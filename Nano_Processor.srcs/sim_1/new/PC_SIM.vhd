----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 04:14:39 PM
-- Design Name: 
-- Module Name: PC_SIM - Behavioral
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

entity PC_SIM is
--  Port ( );
end PC_SIM ;

architecture Behavioral of PC_SIM is

component PROGRAM_COUNTER 
Port ( TOIN : in STD_LOGIC_VECTOR (2 downto 0);
           TOOUT : out STD_LOGIC_VECTOR (2 downto 0);
           CLK : in STD_LOGIC;
           RES : in STD_LOGIC);
end component;

signal TOIN : STD_LOGIC_VECTOR (2 downto 0);
signal TOOUT : STD_LOGIC_VECTOR (2 downto 0);
signal CLK : STD_LOGIC;
signal RES :STD_LOGIC;

constant clk_period : time := 10 ns;

begin
uut: PROGRAM_COUNTER port map(
   TOOUT => TOOUT, 
   TOIN => TOIN,
   CLK=>CLK,
   RES=>RES);
clk_process :process
begin
 Clk <='0';
 wait for clk_period/2;
 Clk <='1';
 wait for clk_period/2;
 end process;
stim_proc : process
   begin
    Res <='1';
    TOIN <="111";
    wait for 50 ns;
    Res <='1';
    TOIN <="000";
    wait for 50 ns;
    Res <='0';
    TOIN <="111";
    wait for 50 ns;
    Res <='0';
    TOIN <="000";
    wait;
  end process;

end Behavioral;
