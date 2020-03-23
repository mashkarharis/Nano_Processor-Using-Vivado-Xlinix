----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 12:09:25 PM
-- Design Name: 
-- Module Name: mux2to1 - Behavioral
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

entity mux2to1 is
    Port ( jumpsignal : in STD_LOGIC;
           bitt : in STD_LOGIC_VECTOR (1 downto 0);
           Outbit : out STD_LOGIC);
end mux2to1;

architecture Behavioral of mux2to1 is

begin

outbit <= (bitt(0)and (not jumpsignal)) or (bitt(1) and jumpsignal);


end Behavioral;

