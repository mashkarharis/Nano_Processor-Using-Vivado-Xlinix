----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 07:52:47 PM
-- Design Name: 
-- Module Name: way8bit4mux - Behavioral
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

entity way8bit4mux is
    Port ( regsel : in STD_LOGIC_VECTOR (2 downto 0);
           reg0 : in STD_LOGIC_VECTOR (3 downto 0);
           reg1 : in STD_LOGIC_VECTOR (3 downto 0);
           reg2 : in STD_LOGIC_VECTOR (3 downto 0);
           reg3 : in STD_LOGIC_VECTOR (3 downto 0);
           reg4 : in STD_LOGIC_VECTOR (3 downto 0);
           reg5 : in STD_LOGIC_VECTOR (3 downto 0);
           reg6 : in STD_LOGIC_VECTOR (3 downto 0);
           reg7 : in STD_LOGIC_VECTOR (3 downto 0);
           out1 : out STD_LOGIC_VECTOR (3 downto 0));
end way8bit4mux;

architecture Behavioral of way8bit4mux is

component mux8to1
    Port ( INTO : in STD_LOGIC_VECTOR (7 downto 0);
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           OUTTO : out STD_LOGIC);
end component;

signal ha0_s, ha0_c, hal_c :std_logic;
begin

MUX0 : mux8to1 PORT MAP (
    sel => regsel,
    into(0)=> reg0(0),
    into(1)=> reg1(0),
    into(2)=> reg2(0),
    into(3)=> reg3(0),
    into(4)=> reg4(0),
    into(5)=> reg5(0),
    into(6)=> reg6(0),
    into(7)=> reg7(0),
    outto=>out1(0));

MUX1 : mux8to1 PORT MAP (
    sel => regsel,
    into(0)=> reg0(1),
    into(1)=> reg1(1),
    into(2)=> reg2(1),
    into(3)=> reg3(1),
    into(4)=> reg4(1),
    into(5)=> reg5(1),
    into(6)=> reg6(1),
    into(7)=> reg7(1),
    outto=>out1(1));

MUX2 : mux8to1 PORT MAP (
    sel => regsel,
    into(0)=> reg0(2),
    into(1)=> reg1(2),
    into(2)=> reg2(2),
    into(3)=> reg3(2),
    into(4)=> reg4(2),
    into(5)=> reg5(2),
    into(6)=> reg6(2),
    into(7)=> reg7(2),
    outto=>out1(2));

MUX3 : mux8to1 PORT MAP (
    sel => regsel,
    into(0)=> reg0(3),
    into(1)=> reg1(3),
    into(2)=> reg2(3),
    into(3)=> reg3(3),
    into(4)=> reg4(3),
    into(5)=> reg5(3),
    into(6)=> reg6(3),
    into(7)=> reg7(3),
    outto=>out1(3));
end Behavioral;
