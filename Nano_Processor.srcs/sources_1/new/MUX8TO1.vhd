----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 07:26:29 PM
-- Design Name: 
-- Module Name: MUX8TO1 - Behavioral
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

entity MUX8TO1 is
    Port ( INTO : in STD_LOGIC_VECTOR (7 downto 0);
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           OUTTO : out STD_LOGIC);
end MUX8TO1;

architecture Behavioral of MUX8TO1 is

signal ou,sel0,sel0b ,sel1,sel1b,sel2,sel2b,inter0,inter1,inter2,inter3,inter4,inter5,inter6,inter7 :std_logic;

begin

SEL0<=sel(0);
sel0b<=not sel(0);
sel1<=sel(1);
sel1b<=not sel(1);
sel2 <= sel(2);
sel2b<=not sel(2);

inter0<=into(0) and sel1b and sel2b and sel0b;
inter1<=into(1) and sel0 and sel1b and sel2b;
inter2<=into(2) and sel2b and sel1 and sel0b;
inter3<=into(3) and sel2b and sel1 and sel0;
inter4<=into(4) and sel2 and sel1b and sel0b;
inter5<=into(5) and sel2 and sel1b and sel0;
inter6<=into(6) and sel2 and sel1 and sel0b;
inter7<=into(7) and sel2 and sel1 and sel0;

ou<=inter0 or inter1 or inter2 or inter3 or inter4 or inter5 or inter6 or inter7;
outto<=ou;
end Behavioral;
