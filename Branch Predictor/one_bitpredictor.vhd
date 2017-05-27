library IEEE ;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

entity one_bitpredictor is
port(branch_address:in bit;
      current_prediction:in std_logic;
      miss_prediction:out integer);
end one_bitpredictor;

architecture behavioral of one_bitpredictor is
signal miss_pred:integer:=0;
signal counter_out:integer;
signal previous_0:std_logic:='1';
signal previous_1:std_logic:='1';
begin
process(branch_address,current_prediction)is
begin

case branch_address is
when '0' =>
--if(branch_address='0') then
if(current_prediction /= previous_0) then
miss_pred<=miss_pred+1;
previous_0<=current_prediction;
end if;


when '1' =>
--elsif(branch_address='1') then
if(current_prediction /= previous_1) then
miss_pred<=miss_pred+1;
previous_1<=current_prediction;
end if;

--end if;
end case;

end process;
miss_prediction<=miss_pred;
end;