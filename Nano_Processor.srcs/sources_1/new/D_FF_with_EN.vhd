----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/20/2020 04:39:37 PM
-- Design Name: 
-- Module Name: D_FF_with_EN - Behavioral
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

entity D_FF_WITH_EN is
    Port ( D : in STD_LOGIC;
           En : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end D_FF_WITH_EN;

architecture Behavioral of D_FF_WITH_EN is

Component D_FF Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end component;

signal res0,clk0,d0,en0,not_en0,q0,qbar0,inter0,inter1,inter2:std_logic;

begin

D_FF0 : D_FF Port map
 ( D => inter1,
           Res =>res0,
           Clk =>clk0,
           Q =>q0,
           Qbar =>qbar0);
           
d0 <= d;
en0 <=en;
res0<=res;
clk0<=clk;

q<=q0;
qbar<=qbar0;

inter0<= d0 and en0;

not_en0<=not en0;
inter2<=not_en0 and q0;

inter1<=inter2 or inter0; 

end Behavioral;
