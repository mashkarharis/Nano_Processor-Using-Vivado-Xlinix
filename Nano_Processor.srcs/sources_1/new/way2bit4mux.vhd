----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/20/2020 09:11:26 PM
-- Design Name: 
-- Module Name: way2bit4mux - Behavioral
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


entity way2bit4mux is
    Port ( loadsel : STD_LOGIC;
           load : in STD_LOGIC_VECTOR (3 downto 0);
           defaultval : in STD_LOGIC_VECTOR (3 downto 0);
           outval : out STD_LOGIC_VECTOR (3 downto 0)
           );
end way2bit4mux;

architecture Behavioral of way2bit4mux is


begin

outval(0) <= (defaultval(0)and (not loadsel)) or (load(0) and loadsel); 
outval(1) <= (defaultval(1)and (not loadsel)) or (load(1) and loadsel); 
outval(2) <= (defaultval(2)and (not loadsel)) or (load(2) and loadsel); 
outval(3) <= (defaultval(3)and (not loadsel)) or (load(3) and loadsel); 
    

end Behavioral;
