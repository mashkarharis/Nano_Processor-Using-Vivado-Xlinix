----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2020 05:11:01 PM
-- Design Name: 
-- Module Name: RegisterBank - Behavioral
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

entity RegisterBank is
    Port ( RegisterBank_In : in STD_LOGIC_VECTOR (3 downto 0) ;
           RegisterBank_Reset : in STD_LOGIC;
           Register_Select : in STD_LOGIC_VECTOR (2 downto 0);
           Clock : in STD_LOGIC;
           Register0_Out : out STD_LOGIC_VECTOR (3 downto 0);
           Register1_Out : out STD_LOGIC_VECTOR (3 downto 0);
           Register2_Out : out STD_LOGIC_VECTOR (3 downto 0);
           Register3_Out : out STD_LOGIC_VECTOR (3 downto 0);
           Register4_Out : out STD_LOGIC_VECTOR (3 downto 0);
           Register5_Out : out STD_LOGIC_VECTOR (3 downto 0);
           Register6_Out : out STD_LOGIC_VECTOR (3 downto 0);
           Register7_Out : out STD_LOGIC_VECTOR (3 downto 0));
end RegisterBank;

architecture Behavioral of RegisterBank is

component Register_4bit is
    Port ( RegIn : in STD_LOGIC_VECTOR (3 downto 0);
           RegOut : out STD_LOGIC_VECTOR (3 downto 0);
           Clock : in STD_LOGIC;
           RegEnable : in STD_LOGIC;
           RegReset : in STD_LOGIC);
end component;

component Decoder_3_to_8 is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

Signal Active: std_logic;
Signal RegisterSelecter: std_logic_vector (7 downto 0);

begin

Active <= '1';

Decoder : Decoder_3_to_8
port map(
    I => Register_Select,
    EN => Active,
    Y => RegisterSelecter);

Reg0 : Register_4bit
port map(
    RegIn => RegisterBank_In,
    RegOut => Register0_Out,
    RegReset => RegisterBank_Reset,
    RegEnable => RegisterSelecter(0),
    Clock => Clock);

Reg1 : Register_4bit
port map(
    RegIn => RegisterBank_In,
    RegOut => Register1_Out,
    RegReset => RegisterBank_Reset,
    RegEnable => RegisterSelecter(1),
    Clock => Clock);

Reg2 : Register_4bit
port map(
    RegIn => RegisterBank_In,
    RegOut => Register2_Out,
    RegReset => RegisterBank_Reset,
    RegEnable => RegisterSelecter(2),
    Clock => Clock);

Reg3 : Register_4bit
port map(
    RegIn => RegisterBank_In,
    RegOut => Register3_Out,
    RegReset => RegisterBank_Reset,
    RegEnable => RegisterSelecter(3),
    Clock => Clock);

Reg4 : Register_4bit
port map(
    RegIn => RegisterBank_In,
    RegOut => Register4_Out,
    RegReset => RegisterBank_Reset,
    RegEnable => RegisterSelecter(4),
    Clock => Clock);

Reg5 : Register_4bit
port map(
    RegIn => RegisterBank_In,
    RegOut => Register5_Out,
    RegReset => RegisterBank_Reset,
    RegEnable => RegisterSelecter(5),
    Clock => Clock);

Reg6 : Register_4bit
port map(
    RegIn => RegisterBank_In,
    RegOut => Register6_Out,
    RegReset => RegisterBank_Reset,
    RegEnable => RegisterSelecter(6),
    Clock => Clock);

Reg7 : Register_4bit
port map(
    RegIn => RegisterBank_In,
    RegOut => Register7_Out,
    RegReset => RegisterBank_Reset,
    RegEnable => RegisterSelecter(7),
    Clock => Clock);

end Behavioral;
