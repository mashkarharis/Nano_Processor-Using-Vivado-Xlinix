----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/20/2020 07:34:57 PM
-- Design Name: 
-- Module Name: Micro_Processor - Behavioral
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

entity Micro_Processor is
    Port ( Clockinn : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC;
           To_Leds : out STD_LOGIC_VECTOR (3 downto 0);
           PCVAL : out STD_LOGIC_VECTOR (2 downto 0));
           
end Micro_Processor;

architecture Behavioral of Micro_Processor is

component PROGRAM_COUNTER
    Port ( TOIN : in STD_LOGIC_VECTOR (2 downto 0);
           TOOUT : out STD_LOGIC_VECTOR (2 downto 0);
           CLK : in STD_LOGIC;
           RES : in STD_LOGIC);
end component;
component way2bit3mux
    Port ( jumpflag : in STD_LOGIC;
           addresstojump : in STD_LOGIC_VECTOR (2 downto 0);
           default1 : in STD_LOGIC_VECTOR (2 downto 0);
           out1 : out STD_LOGIC_VECTOR (2 downto 0));
end component;
component bit_3_adder
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (2 downto 0)
           );
end component;
component program_rom is
    Port ( regsel : in STD_LOGIC_VECTOR (2 downto 0);
           out1 : out STD_LOGIC_VECTOR (11 downto 0));
end component;
component Instruction_Decoder is
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
end component;

component way2bit4mux is
    Port ( loadsel : STD_LOGIC;
           load : in STD_LOGIC_VECTOR (3 downto 0);
           defaultval : in STD_LOGIC_VECTOR (3 downto 0);
           outval : out STD_LOGIC_VECTOR (3 downto 0)
           );
end component;
component Slow_Clock is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end component;
component RegisterBank is
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
end component;
component way8bit4mux is
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
end component;

component fourbitaddsubunit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cal_Control : in STD_LOGIC;
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0));
end component;


signal signal6,isolateclock,signalid2,signalid6,cclk,rres: STD_LOGIC;
signal signal1,signal2,signal3,signal4,signal5,signal32,signalid1,signalid4,signalid5 :  STD_LOGIC_VECTOR (2 downto 0);
signal signal7 :  STD_LOGIC_VECTOR (11 downto 0);
signal signalid3,signal8,signal9,signalid7 :  STD_LOGIC_VECTOR (3 downto 0);
signal rbout0,rbout1,rbout2,rbout3,rbout4,rbout5,rbout6,rbout7,signal10,signal11 :  STD_LOGIC_VECTOR (3 downto 0);

begin



PROGRAM_COUNTER0 : PROGRAM_COUNTER PORT MAP (
         TOIN =>signal1  ,
         TOOUT => signal32,
         CLK => cclk,
         res =>rres );
way2bit3mux0 : way2bit3mux Port map ( 
         jumpflag =>signal6,
         addresstojump =>signal5,
         default1 =>signal4,
         out1 =>signal1);
bit_3_adder0 : bit_3_adder Port map ( 
         A =>signal2,
         S =>signal4);
programrom0 : program_rom  Port map ( 
         regsel =>signal3,
         out1 =>signal7 );
instruction_decoder0 : Instruction_Decoder Port map (
         Instruction =>signal7,
         RegisterCheckkJump =>signalid7,
         RegisterEnable =>signalid1,
         LoadSelect =>signalid2,
         ImmValue =>signalid3,
         RegisterSelect_1=>signalid4,
         RegisterSelect_2 =>signalid5,
         AddSub_Select =>signalid6,
         JumpFlag =>signal6,
         JumpAdder =>signal5);

way2bit4mux0 : way2bit4mux Port map ( 
         loadsel =>signalid2,
         load =>signalid3,
         defaultval =>signal9,
         outval =>signal8
         );
slow_clock0 : Slow_Clock Port map ( 
         Clk_in =>isolateclock,
         Clk_out=>isolateclock);

RegisterBank0 : RegisterBank Port map ( 
           RegisterBank_In=>signal8,
           RegisterBank_Reset =>rres,
           Register_Select =>signalid1,
           Clock =>cclk,
           Register0_Out =>rbout0,
           Register1_Out =>rbout1,
           Register2_Out =>rbout2,
           Register3_Out =>rbout3,
           Register4_Out =>rbout4,
           Register5_Out =>rbout5,
           Register6_Out =>rbout6,
           Register7_Out =>rbout7);

way8bit4mux0 : way8bit4mux Port map ( 
           regsel =>signalid4,
           reg0 =>rbout0,
           reg1 =>rbout1,
           reg2 =>rbout2,
           reg3 =>rbout3,
           reg4 =>rbout4,
           reg5 =>rbout5,
           reg6 =>rbout6,
           reg7 =>rbout7,
           out1 =>signal10);
way8bit4mux1 : way8bit4mux Port map ( 
           regsel =>signalid5,
           reg0 =>rbout0,
           reg1 =>rbout1,
           reg2 =>rbout2,
           reg3 =>rbout3,
           reg4 =>rbout4,
           reg5 =>rbout5,
           reg6 =>rbout6,
           reg7 =>rbout7,
           out1 =>signal11);
   
fourbitaddsubunit0 : fourbitaddsubunit Port map ( 
           A =>signal10,
           B =>signal11,
           Cal_Control =>signalid6,
           Overflow =>overflow,
           Zero =>zero,
           S =>signal9);
signalid7<=signal10;
To_Leds(0)<=rbout7(0);
To_Leds(1)<=rbout7(1);
To_Leds(2)<=rbout7(2);
To_Leds(3)<=rbout7(3);
rres <=reset;   
Cclk<=Clockinn;
signal3 <= signal32;
signal2 <= signal32;
PCVAL <=signal32;           
--signal1<=firstin;
end Behavioral;
