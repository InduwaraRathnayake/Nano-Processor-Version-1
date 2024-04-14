----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2024 01:23:57 PM
-- Design Name: 
-- Module Name: MUX_2way_3bit - Behavioral
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

entity MUX_2way_3bit is
    Port ( A1 : in STD_LOGIC_VECTOR (2 downto 0);
           A2 : in STD_LOGIC_VECTOR (2 downto 0);
           Selector : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2 downto 0));
end MUX_2way_3bit;

architecture Behavioral of MUX_2way_3bit is

component Tri_State_Buff is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;

--component Decoder_1_to_2 
--    Port ( I : in STD_LOGIC;
--           EN : in STD_LOGIC;
--           Y : out STD_LOGIC_VECTOR (1 downto 0));
--end component;

signal enable_signals : STD_LOGIC_VECTOR(1 downto 0) := "01" ;

begin
--     Decoder : Decoder_1_to_2
--        port map (
--            I => Selector,
--            EN => '1',
--            Y => enable_signals
--           );
     enable_signals(0) <= NOT Selector;        
     enable_signals(1) <= Selector; 
            
     buffer_0: Tri_State_Buff
           port map (
               I => A1,
               EN => enable_signals(0),
               Q => Output
           );

     buffer_1: Tri_State_Buff
           port map (
               I => A2,
               EN => enable_signals(1),
               Q => Output
           );
           
--process (Selector)
--   begin
--       case Selector is
--           when '0' => enable_signals <= "01";
--           when '1' => enable_signals <= "10";
--           when others => enable_signals <= "00";
--       end case;
--   end process;

--    Output(0) <= (A1(0) and not Selector) or (A2(0) and Selector);
--    Output(1) <= (A1(1) and not Selector) or (A2(1) and Selector);
--    Output(2) <= (A1(2) and not Selector) or (A2(2) and Selector);
 

end Behavioral;
