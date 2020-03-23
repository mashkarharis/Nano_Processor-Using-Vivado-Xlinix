----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 04:01:38 PM
-- Design Name: 
-- Module Name: PROGRAM_COUNTER - Behavioral
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

entity PROGRAM_COUNTER is
    Port ( TOIN : in STD_LOGIC_VECTOR (2 downto 0);
           TOOUT : out STD_LOGIC_VECTOR (2 downto 0);
           CLK : in STD_LOGIC;
           RES : in STD_LOGIC);
end PROGRAM_COUNTER;

architecture Behavioral of PROGRAM_COUNTER is


component D_FF
    Port (  D : in STD_LOGIC;
          Res : in STD_LOGIC;
          Clk : in STD_LOGIC;
          Q : out STD_LOGIC;
          Qbar : out STD_LOGIC);
end component;

signal ha0_s :std_logic;
begin

DFF0 : D_FF PORT MAP (
         D => toin(0),
         Res =>res,
         Clk =>clk,
         Q =>toout(0),
         Qbar =>ha0_s);
DFF1 : D_FF PORT MAP (
         D => toin(1),
         Res =>res,
         Clk =>clk,
         Q =>toout(1),
         Qbar =>ha0_s);
DFF2 : D_FF PORT MAP (
         D => toin(2),
         Res =>res,
         Clk =>clk,
         Q =>toout(2),
         Qbar =>ha0_s);


end Behavioral;
