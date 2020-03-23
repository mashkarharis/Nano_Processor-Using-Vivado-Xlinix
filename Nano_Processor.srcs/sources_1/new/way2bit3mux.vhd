----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 10:48:58 AM
-- Design Name: 
-- Module Name: way2bit3mux - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity way2bit3mux is
    Port ( jumpflag : in STD_LOGIC;
           addresstojump : in STD_LOGIC_VECTOR (2 downto 0);
           default1 : in STD_LOGIC_VECTOR (2 downto 0);
           out1 : out STD_LOGIC_VECTOR (2 downto 0));
end way2bit3mux;

architecture Behavioral of way2bit3mux is

component mux2to1
    Port ( jumpsignal : in STD_LOGIC;
           bitt : in STD_LOGIC_VECTOR (1 downto 0);
           Outbit : out STD_LOGIC);
end component;

signal ha0_s, ha0_c, hal_c :std_logic;
begin

MUX0 : mux2to1 PORT MAP (
    jumpsignal => jumpflag,
    bitt(0) => default1(0),
    bitt(1) => addresstojump(0),
    outbit  => out1(0));
MUX1 : mux2to1 PORT MAP (
        jumpsignal => jumpflag,
        bitt(0) => default1(1),
        bitt(1) => addresstojump(1),
        outbit  => out1(1));
MUX2 : mux2to1 PORT MAP (
            jumpsignal => jumpflag,
            bitt(0) => default1(2),
            bitt(1) => addresstojump(2),
            outbit  => out1(2));


end Behavioral;
