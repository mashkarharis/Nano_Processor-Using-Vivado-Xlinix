----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 03:56:11 PM
-- Design Name: 
-- Module Name: D_FF_SIM - Behavioral
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

entity D_FF_Sim is
--  Port ( );
end D_FF_Sim;

architecture Behavioral of D_FF_Sim is

component D_FF 
Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end component;

signal D : std_logic := '0';
signal Clk : std_logic := '0';
signal Res : std_logic := '1';
signal Q,Qbar : std_logic;

constant clk_period : time := 10 ns;

begin
uut: D_FF port map(
    D => D,
    Res => Res,
    Clk => Clk,
    Q => Q,
    Qbar => Qbar);
clk_process :process
begin
 Clk <='0';
 wait for clk_period/2;
 Clk <='1';
 wait for clk_period/2;
 end process;
stim_proc : process
   begin
    Res <='1';
    wait for 50 ns;
    Res <='0';
    D <='1';
    wait for 50 ns;
    Res <='0';
    D <='0';
    wait for 50 ns;
    Res <='0';
    D <='1';
    wait for 50 ns;
    Res <='1';
    D <='1';
    wait;
  end process;

end Behavioral;
