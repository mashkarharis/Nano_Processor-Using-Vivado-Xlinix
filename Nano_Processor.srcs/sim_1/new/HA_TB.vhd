----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 08:31:28 AM
-- Design Name: 
-- Module Name: HA_TB - Behavioral
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

entity HA_TB is
--  Port ( );
end HA_TB;

architecture Behavioral of HA_TB is

COMPONENT HA
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC;
           S : out STD_LOGIC);
END COMPONENT;

SIGNAL A1,B1,C1,S1 :STD_LOGIC;


begin

UUT: HA PORT MAP (
    A => A1,
    B => B1,
    S => S1,
    C => C1);
SIM: PROCESS 
BEGIN

    A1 <='0';
    B1 <='0';
    WAIT FOR 100 NS;
    A1 <='0';
    B1 <='1';
    WAIT FOR 100 NS;
    A1 <='1';
    B1 <='0';
    WAIT FOR 100 NS;
    A1 <='1';
    B1 <='1';
    WAIT;


END PROCESS;

end Behavioral;

