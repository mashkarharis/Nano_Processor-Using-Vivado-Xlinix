----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 09:19:27 PM
-- Design Name: 
-- Module Name: Program_ROM - Behavioral
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

entity program_rom is
    Port ( regsel : in STD_LOGIC_VECTOR (2 downto 0);
           out1 : out STD_LOGIC_VECTOR (11 downto 0));
end program_rom;

architecture Behavioral of program_rom is

component mux8to1
    Port ( INTO : in STD_LOGIC_VECTOR (7 downto 0);
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           OUTTO : out STD_LOGIC);
end component;

type rom_type is array (0 to 7) of std_logic_vector (11 downto 0);
signal ROM : rom_type :=(
                "101110000000",--- r7 <= 0
                "101000000010",--- r4 <= 2
                "101100000011",--- r6 <= 3
                "101010000001",--- r5 <= 1
                "011010000000",--- r5 <= -r5
                "001111000000",--- r7 <= r7+r4
                "001101010000",--- r6 <= r6+r5
                "111100000101" --- PC <= 5
                );

begin

MUX0 : mux8to1 PORT MAP (
    sel => regsel,
    into(0)=> rom(0)(0),
    into(1)=> rom(1)(0),
    into(2)=> rom(2)(0),
    into(3)=> rom(3)(0),
    into(4)=> rom(4)(0),
    into(5)=> rom(5)(0),
    into(6)=> rom(6)(0),
    into(7)=> rom(7)(0),
    outto=>out1(0));

MUX1 : mux8to1 PORT MAP (
    sel => regsel,
    into(0)=> rom(0)(1),
    into(1)=> rom(1)(1),
    into(2)=> rom(2)(1),
    into(3)=> rom(3)(1),
    into(4)=> rom(4)(1),
    into(5)=> rom(5)(1),
    into(6)=> rom(6)(1),
    into(7)=> rom(7)(1),
    outto=>out1(1));
MUX2 : mux8to1 PORT MAP (
    sel => regsel,
    into(0)=> rom(0)(2),
    into(1)=> rom(1)(2),
    into(2)=> rom(2)(2),
    into(3)=> rom(3)(2),
    into(4)=> rom(4)(2),
    into(5)=> rom(5)(2),
    into(6)=> rom(6)(2),
    into(7)=> rom(7)(2),
    outto=>out1(2));
MUX3 : mux8to1 PORT MAP (
        sel => regsel,
        into(0)=> rom(0)(3),
        into(1)=> rom(1)(3),
        into(2)=> rom(2)(3),
        into(3)=> rom(3)(3),
        into(4)=> rom(4)(3),
        into(5)=> rom(5)(3),
        into(6)=> rom(6)(3),
        into(7)=> rom(7)(3),
        outto=>out1(3));
MUX4 : mux8to1 PORT MAP (
        sel => regsel,
        into(0)=> rom(0)(4),
        into(1)=> rom(1)(4),
        into(2)=> rom(2)(4),
        into(3)=> rom(3)(4),
        into(4)=> rom(4)(4),
        into(5)=> rom(5)(4),
        into(6)=> rom(6)(4),
        into(7)=> rom(7)(4),
        outto=>out1(4));
MUX5 : mux8to1 PORT MAP (
        sel => regsel,
        into(0)=> rom(0)(5),
        into(1)=> rom(1)(5),
        into(2)=> rom(2)(5),
        into(3)=> rom(3)(5),
        into(4)=> rom(4)(5),
        into(5)=> rom(5)(5),
        into(6)=> rom(6)(5),
        into(7)=> rom(7)(5),
        outto=>out1(5));    
MUX6 : mux8to1 PORT MAP (
        sel => regsel,
        into(0)=> rom(0)(6),
        into(1)=> rom(1)(6),
        into(2)=> rom(2)(6),
        into(3)=> rom(3)(6),
        into(4)=> rom(4)(6),
        into(5)=> rom(5)(6),
        into(6)=> rom(6)(6),
        into(7)=> rom(7)(6),
        outto=>out1(6));
MUX7 : mux8to1 PORT MAP (
        sel => regsel,
        into(0)=> rom(0)(7),
        into(1)=> rom(1)(7),
        into(2)=> rom(2)(7),
        into(3)=> rom(3)(7),
        into(4)=> rom(4)(7),
        into(5)=> rom(5)(7),
        into(6)=> rom(6)(7),
        into(7)=> rom(7)(7),
        outto=>out1(7));
MUX8 : mux8to1 PORT MAP (
            sel => regsel,
            into(0)=> rom(0)(8),
            into(1)=> rom(1)(8),
            into(2)=> rom(2)(8),
            into(3)=> rom(3)(8),
            into(4)=> rom(4)(8),
            into(5)=> rom(5)(8),
            into(6)=> rom(6)(8),
            into(7)=> rom(7)(8),
            outto=>out1(8));
MUX9 : mux8to1 PORT MAP (
            sel => regsel,
            into(0)=> rom(0)(9),
            into(1)=> rom(1)(9),
            into(2)=> rom(2)(9),
            into(3)=> rom(3)(9),
            into(4)=> rom(4)(9),
            into(5)=> rom(5)(9),
            into(6)=> rom(6)(9),
            into(7)=> rom(7)(9),
            outto=>out1(9));
MUX10 : mux8to1 PORT MAP (
            sel => regsel,
            into(0)=> rom(0)(10),
            into(1)=> rom(1)(10),
            into(2)=> rom(2)(10),
            into(3)=> rom(3)(10),
            into(4)=> rom(4)(10),
            into(5)=> rom(5)(10),
            into(6)=> rom(6)(10),
            into(7)=> rom(7)(10),
            outto=>out1(10));
MUX11 : mux8to1 PORT MAP (
            sel => regsel,
            into(0)=> rom(0)(11),
            into(1)=> rom(1)(11),
            into(2)=> rom(2)(11),
            into(3)=> rom(3)(11),
            into(4)=> rom(4)(11),
            into(5)=> rom(5)(11),
            into(6)=> rom(6)(11),
            into(7)=> rom(7)(11),
            outto=>out1(11));    
end Behavioral;
