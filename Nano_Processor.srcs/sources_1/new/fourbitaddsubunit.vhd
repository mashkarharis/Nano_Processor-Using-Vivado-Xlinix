----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2020 03:07:27 PM
-- Design Name: 
-- Module Name: fourbitaddsubunit - Behavioral
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

entity fourbitaddsubunit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cal_Control : in STD_LOGIC;
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0));
end fourbitaddsubunit;

architecture Behavioral of fourbitaddsubunit is

component FA
    port (
        A: in std_logic;
        B: in std_logic;
        C_in: in std_logic;
        S: out std_logic;
        C_out: out std_logic);
end component;

SIGNAL B_in, S_out : std_logic_vector(3 downto 0);
SIGNAL FA0_C, FA1_C,FA2_C,FA3_C : std_logic;

begin

B_in(0) <= B(0) XOR Cal_Control;
B_in(1) <= B(1) XOR Cal_Control;
B_in(2) <= B(2) XOR Cal_Control;
B_in(3) <= B(3) XOR Cal_Control;

FA_0 : FA
port map (
    A => A(0),
    B => B_in(0),
    C_in => Cal_Control,
    S => S_out(0),
    C_Out => FA0_C);

FA_1 : FA
port map (
    A => A(1),
    B => B_in(1),
    C_in => FA0_C,
    S => S_out(1),
    C_Out => FA1_C);

FA_2 : FA
port map (
    A => A(2),
    B => B_in(2),
    C_in => FA1_C,
    S => S_out(2),
    C_Out => FA2_C);

FA_3 : FA
port map (
    A => A(3),
    B => B_in(3),
    C_in => FA2_C,
    S => S_out(3),
    C_Out => FA3_C);

overflow <=  (FA2_C XOR FA3_C);

S(0) <= S_out(0);
S(1) <= S_out(1);
S(2) <= S_out(2);
S(3) <= S_out(3);

Zero <= not (S_out(0) or S_out(1) or S_out(2) or S_out(3));

end Behavioral;

