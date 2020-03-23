----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2020 05:18:08 PM
-- Design Name: 
-- Module Name: RegBankTB - Behavioral
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

entity RegBankTB is
--  Port ( );
end RegBankTB;

architecture Behavioral of RegBankTB is
component RegisterBank is
    Port ( RegisterBank_In : in STD_LOGIC_VECTOR (3 downto 0);
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

           signal RegisterBank_In : STD_LOGIC_VECTOR (3 downto 0);
           signal RegisterBank_Reset : STD_LOGIC;
           signal Register_Select :  STD_LOGIC_VECTOR (2 downto 0);
           signal Clock : STD_LOGIC;
           signal Register0_Out :  STD_LOGIC_VECTOR (3 downto 0);
           signal Register1_Out :  STD_LOGIC_VECTOR (3 downto 0);
           signal Register2_Out :  STD_LOGIC_VECTOR (3 downto 0);
           signal Register3_Out :  STD_LOGIC_VECTOR (3 downto 0);
           signal Register4_Out :  STD_LOGIC_VECTOR (3 downto 0);
           signal Register5_Out :  STD_LOGIC_VECTOR (3 downto 0);
           signal Register6_Out :  STD_LOGIC_VECTOR (3 downto 0);
           signal Register7_Out :  STD_LOGIC_VECTOR (3 downto 0);
           constant clk_period : time := 10 ns;

begin


uut : registerbank port map(
           RegisterBank_In => RegisterBank_In,
           RegisterBank_Reset =>RegisterBank_Reset,
           Register_Select=> Register_Select,
           Clock =>Clock,
           Register0_Out=> Register0_Out,
           Register1_Out=> Register1_Out,
           Register2_Out=> Register2_Out,
           Register3_Out=> Register3_Out,
           Register4_Out=> Register4_Out,
           Register5_Out=> Register5_Out,
           Register6_Out=> Register6_Out,
           Register7_Out=> Register7_Out
           );
clk_process :process
           begin
            Clock <='0';
            wait for clk_period/2;
            Clock <='1';
            wait for clk_period/2;
            end process;            
stiM_PROC: PROCESS
BEGIN

RegisterBank_In<="1111";
RegisterBank_Reset<='0';
Register_Select<="000";
wait for 100 ns;
RegisterBank_In<="1111";
RegisterBank_Reset<='0';
Register_Select<="001";
wait for 100 ns;
RegisterBank_In<="1111";
RegisterBank_Reset<='0';
Register_Select<="010";
wait for 100 ns;
RegisterBank_In<="1111";
RegisterBank_Reset<='0';
Register_Select<="011";
wait for 100 ns;
RegisterBank_In<="1111";
RegisterBank_Reset<='0';
Register_Select<="100";
wait for 100 ns;
RegisterBank_In<="1111";
RegisterBank_Reset<='0';
Register_Select<="101";
wait for 100 ns;
RegisterBank_In<="1111";
RegisterBank_Reset<='0';
Register_Select<="110";
wait for 100 ns;
RegisterBank_In<="1111";
RegisterBank_Reset<='0';
Register_Select<="111";
wait for 100 ns;


RegisterBank_In<="1111";
RegisterBank_Reset<='1';
Register_Select<="000";
wait for 100 ns;



end process;
end;