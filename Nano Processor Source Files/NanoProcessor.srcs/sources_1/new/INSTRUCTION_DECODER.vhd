----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2024 05:01:25 PM
-- Design Name: 
-- Module Name: INSTRUCTION_DECODER - Behavioral
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

entity INSTRUCTION_DECODER is
    Port ( Instruction_Bus : in STD_LOGIC_VECTOR (11 downto 0);
           Reg_Check_Jump : in STD_LOGIC_VECTOR (3 downto 0);
           Add_Sub_Sele : out STD_LOGIC;
           Reg_Sele1 : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_Sele2 : out STD_LOGIC_VECTOR (2 downto 0);
           Immediate_Value : out STD_LOGIC_VECTOR (3 downto 0);
           Load_Sele : out STD_LOGIC;
           Reg_EN : out STD_LOGIC_VECTOR (2 downto 0);
           Jump_Flag : out STD_LOGIC;
           Address_to_Jump : out STD_LOGIC_VECTOR (2 downto 0));
end INSTRUCTION_DECODER;

architecture Behavioral of INSTRUCTION_DECODER is

signal Operator : std_logic_vector (1 downto 0);

begin
    Operator <= Instruction_Bus(11 downto 10);
    
    process (Operator, Instruction_Bus, Reg_Check_Jump) begin
        
        Add_Sub_Sele <= '0';
        Jump_Flag <= '0';
        Load_Sele <= '0';
        Reg_Sele1 <= "000"; 
        Reg_Sele2 <= "000";
        Immediate_Value <= "0000";
        Reg_EN <= "000";
        Address_to_Jump <= "000";
 
                     
        if Operator = "00" then 
            Reg_Sele1 <= Instruction_Bus(9 downto 7);
            Reg_Sele2 <= Instruction_Bus(6 downto 4);           
            Reg_EN <= Instruction_Bus(9 downto 7);
           
        elsif Operator = "01" then 

            Reg_EN <= Instruction_Bus(9 downto 7);
            Reg_Sele2 <= Instruction_Bus(9 downto 7);
            Add_Sub_Sele <= '1';
                                            
        elsif Operator = "10" then 
                        
            Immediate_Value <= Instruction_Bus(3 downto 0);
            Reg_EN <= Instruction_Bus(9 downto 7);
            Load_Sele <= '1'; 
               
        elsif Operator = "11" then
            Address_to_Jump <= Instruction_Bus(2 downto 0);
            Reg_Sele1 <= Instruction_Bus(9 downto 7); 
            if Reg_Check_Jump = "0000" then 
                Jump_Flag <= '1';             
            end if;                             
        end if;
    end process;

end Behavioral;
