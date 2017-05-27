library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_bit.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;

entity twobit_predictor is
port( b_address:in bit;
      branch_prediction:in std_logic;
      miss_prediction:out integer);
end twobit_predictor;

architecture behavioral of twobit_predictor is
signal previous0:std_logic_vector(1 downto 0):="00";
signal previous1:std_logic_vector(1 downto 0):="00";
signal miss_pred:integer:=0;

begin
process (b_address,branch_prediction)
begin
if (b_address='0') then
case previous0 is
when "00" => 
if branch_prediction = '1' then
previous0 <= previous0 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous0 <= previous0 ;
 end if;

when "01" =>
 if branch_prediction = '1' then 
previous0 <= previous0 + "01";
miss_pred <=miss_pred + 1;
 else
previous0 <= previous0 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous0 <= previous0 + "01";
else
previous0 <= previous0 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous0 <=previous0; 
else
previous0 <=previous0 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous0 <= previous0;
end case;

elsif b_address = '1' then
case previous1 is
when "00" => 
if branch_prediction= '1' then
previous1 <= previous1 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous1 <= previous1 ;
end if;

when "01" => 
if branch_prediction= '1' then 
previous1 <= previous1 + "01";
miss_pred<=miss_pred + 1;
else
previous1 <= previous1 - "01" ;
 end if;

when "10" => if branch_prediction = '1' then 
previous1 <= previous1 + "01";
 else
previous1 <= previous1 - "01";
miss_pred <=miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous1<= previous1; 
else
previous1 <= previous1-"01" ;
miss_pred<=miss_pred + 1; 
end if;
when others =>  previous1 <=  previous1;
end case;
end if;
 
end process;
miss_prediction<= miss_pred;
end ;	