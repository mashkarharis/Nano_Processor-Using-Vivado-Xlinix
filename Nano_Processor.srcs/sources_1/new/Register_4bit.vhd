----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/20/2020 04:31:55 PM
-- Design Name: 
-- Module Name: Register_4bit - Behavioral
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


entity Register_4bit is

    Port ( RegIn : in STD_LOGIC_VECTOR (3 downto 0);
           RegOut : out STD_LOGIC_VECTOR (3 downto 0);
           Clock : in STD_LOGIC;
           RegEnable : in STD_LOGIC;
           RegReset : in STD_LOGIC);
end Register_4bit;

architecture Behavioral of Register_4bit is

component D_FF_WITH_EN Port ( D : in STD_LOGIC;
           En : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end component;

signal cout0,cout1,cout2,cout3,cin:std_logic;

begin

D_FF_0:  D_FF_WITH_EN port map(
    d=> RegIn(0),
    en =>RegEnable,
    res=>RegReset,
    clk=>Clock,
    q=>RegOut(0)
    );
D_FF_1:  D_FF_WITH_EN port map(
    d=> RegIn(1),
    en =>RegEnable,
    res=>RegReset,
    clk=>Clock,
    q=>RegOut(1)
    );
 D_FF_2:  D_FF_WITH_EN port map(
    d=> RegIn(2),
    en =>RegEnable,
    res=>RegReset,
    clk=>Clock,
    q=>RegOut(2)
    );
D_FF_3:  D_FF_WITH_EN port map(
    d=> RegIn(3),
    en =>RegEnable,
    res=>RegReset,
    clk=>Clock,
    q=>RegOut(3)
    );


end Behavioral;
