----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/20/2020 05:32:36 PM
-- Design Name: 
-- Module Name: instruction_decoder - Behavioral
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

entity Instruction_Decoder is
    Port ( Instruction : in STD_LOGIC_VECTOR (11 downto 0);
           RegisterCheckkJump : in STD_LOGIC_VECTOR (3 downto 0);
           RegisterEnable : out STD_LOGIC_VECTOR (2 downto 0);
           LoadSelect : out STD_LOGIC;
           ImmValue : out STD_LOGIC_VECTOR (3 downto 0);
           RegisterSelect_1 : out STD_LOGIC_VECTOR (2 downto 0);
           RegisterSelect_2 : out STD_LOGIC_VECTOR (2 downto 0);
           AddSub_Select : out STD_LOGIC;
           JumpFlag : out STD_LOGIC;
           JumpAdder : out STD_LOGIC_VECTOR (2 downto 0));
end Instruction_Decoder;

 architecture Behavioral of Instruction_Decoder is

component Decoder_2_to_4
    port(
        I: in std_logic_vector(1 downto 0);
        En: in std_logic;
        Y: out std_logic_vector(3 downto 0));
    end component;

Signal add, neg, mov, jzr : std_logic;
Signal var1 : std_logic;
signal reg1sel,reg2sel : STD_LOGIC_VECTOR (2 downto 0);

begin

Decoder_2_to_4_0 : Decoder_2_to_4
    port map (
    I(0) => Instruction(10),
    I(1) => Instruction(11),
    EN => '1',
    Y(0)=> add,
    Y(1) => neg,
    Y(2) => mov,
    Y(3) => jzr);
    
LoadSelect <= mov;
AddSub_Select <= neg;
JumpFlag <=jzr and  ((RegisterCheckkJump(0) or RegisterCheckkJump(1) or RegisterCheckkJump(2)));
JumpAdder <= Instruction (2 downto 0);

var1 <= add or neg or mov;
RegisterEnable(0) <= var1 and Instruction(7);
RegisterEnable(1) <= var1 and Instruction(8);
RegisterEnable(2) <= var1 and Instruction(9);
ImmValue <= Instruction (3 downto 0);

reg1sel(0) <=((Instruction (7))and(not neg));
reg1sel(1) <=((Instruction (8))and(not neg));
reg1sel(2) <=((Instruction (9))and(not neg));

reg2sel(2) <=((Instruction (6))and(not neg)) or ((Instruction (9))and(neg));
reg2sel(1) <=((Instruction (5))and(not neg)) or ((Instruction (8))and(neg));
reg2sel(0) <=((Instruction (4))and(not neg)) or ((Instruction (7))and(neg));

RegisterSelect_1 <= reg1sel;
RegisterSelect_2 <= reg2sel;

end Behavioral;

