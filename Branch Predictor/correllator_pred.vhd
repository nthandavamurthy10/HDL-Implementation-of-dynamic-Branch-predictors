library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_bit.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;

entity correlatorpredictor4_2 is
port(branch_address: in bit;
branch_prediction: in std_logic;
miss_prediction:out integer);
end correlatorpredictor4_2;

architecture behavioral of correlatorpredictor4_2 is

signal previous00:std_logic_vector(1 downto 0):="11";
signal previous01:std_logic_vector(1 downto 0):="11";
signal previous02:std_logic_vector(1 downto 0):="11";
signal previous03:std_logic_vector(1 downto 0):="11";
signal previous04:std_logic_vector(1 downto 0):="11";
signal previous05:std_logic_vector(1 downto 0):="11";
signal previous06:std_logic_vector(1 downto 0):="11";
signal previous07:std_logic_vector(1 downto 0):="11";
signal previous08:std_logic_vector(1 downto 0):="11";
signal previous09:std_logic_vector(1 downto 0):="11";
signal previous010:std_logic_vector(1 downto 0):="11";
signal previous011:std_logic_vector(1 downto 0):="11";
signal previous012:std_logic_vector(1 downto 0):="11";
signal previous013:std_logic_vector(1 downto 0):="11";
signal previous014:std_logic_vector(1 downto 0):="11";
signal previous015:std_logic_vector(1 downto 0):="11";


signal previous10:std_logic_vector(1 downto 0):="11";
signal previous11:std_logic_vector(1 downto 0):="11";
signal previous12:std_logic_vector(1 downto 0):="11";
signal previous13:std_logic_vector(1 downto 0):="11";
signal previous14:std_logic_vector(1 downto 0):="11";
signal previous15:std_logic_vector(1 downto 0):="11";
signal previous16:std_logic_vector(1 downto 0):="11";
signal previous17:std_logic_vector(1 downto 0):="11";
signal previous18:std_logic_vector(1 downto 0):="11";
signal previous19:std_logic_vector(1 downto 0):="11";
signal previous110:std_logic_vector(1 downto 0):="11";
signal previous111:std_logic_vector(1 downto 0):="11";
signal previous112:std_logic_vector(1 downto 0):="11";
signal previous113:std_logic_vector(1 downto 0):="11";
signal previous114:std_logic_vector(1 downto 0):="11";
signal previous115:std_logic_vector(1 downto 0):="11";

signal global_history:std_logic_vector(3 downto 0):="1111";
signal miss_pred:integer:=0;
signal temp_global: std_logic_vector(3 downto 0);

begin

process(branch_address,branch_prediction,global_history)
begin
if(branch_address='0') then
case global_history is

when "0000" =>
case previous00 is

when "00" => 
if branch_prediction = '1' then
previous00 <= previous00 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous00 <= previous00 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous00 <= previous00 + "01";
miss_pred <=miss_pred + 1;
 else
previous00 <= previous00 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous00 <= previous00 + "01";
else
previous00 <= previous00 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous00 <=previous00; 
else
previous00 <=previous00 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous00 <= previous00;
end case;

when "0001" =>
case previous11 is

when "00" => 
if branch_prediction = '1' then
previous01 <= previous01 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous01 <= previous01 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous01 <= previous01 + "01";
miss_pred <=miss_pred + 1;
 else
previous01 <= previous01 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous01 <= previous01 + "01";
else
previous01 <= previous01 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous01 <=previous01; 
else
previous01 <=previous01 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous01 <= previous01;
end case;

when "0010" =>
case previous02 is

when "00" => 
if branch_prediction = '1' then
previous02 <= previous02 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous02 <= previous02 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous02 <= previous02 + "01";
miss_pred <=miss_pred + 1;
 else
previous02 <= previous02 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous02 <= previous02+ "01";
else
previous02 <= previous02 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous02 <=previous02; 
else
previous02 <=previous02 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous02 <= previous02;
end case;

when "0011" =>
case previous03 is

when "00" => 
if branch_prediction = '1' then
previous03 <= previous03 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous03 <= previous03 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous03 <= previous03 + "01";
miss_pred <=miss_pred + 1;
 else
previous03 <= previous03 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous03 <= previous03+ "01";
else
previous03 <= previous03 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous03 <=previous03; 
else
previous03<=previous03 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous03 <= previous03;
end case;

when "0100" =>
case previous04 is

when "00" => 
if branch_prediction = '1' then
previous04 <= previous04 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous04 <= previous04 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous04 <= previous04 + "01";
miss_pred <=miss_pred + 1;
 else
previous04 <= previous04 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous04 <= previous04+ "01";
else
previous04<= previous04 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous04 <=previous04; 
else
previous04<=previous04 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous04 <= previous04;
end case;

when "0101" =>
case previous05 is

when "00" => 
if branch_prediction = '1' then
previous05 <= previous05 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous05 <= previous05 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous05 <= previous05 + "01";
miss_pred <=miss_pred + 1;
 else
previous05 <= previous05 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous05 <= previous05+ "01";
else
previous05 <= previous05 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous05<=previous05; 
else
previous05<=previous05 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous05 <= previous05;
end case;

when "0110" =>
case previous06 is

when "00" => 
if branch_prediction = '1' then
previous06 <= previous06 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous06 <= previous06 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous06 <= previous06 + "01";
miss_pred <=miss_pred + 1;
 else
previous06 <= previous06 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous06<= previous06+ "01";
else
previous06 <= previous06- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous06<=previous06; 
else
previous06<=previous06 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous06 <= previous06;
end case;

when "0111" =>
case previous07 is

when "00" => 
if branch_prediction = '1' then
previous07 <= previous07 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous07 <= previous07 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous07 <= previous07 + "01";
miss_pred <=miss_pred + 1;
 else
previous07 <= previous07 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous07 <= previous07+ "01";
else
previous07 <= previous07 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous07<=previous07; 
else
previous07<=previous07 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous07 <= previous07;
end case;

when "1000" =>
case previous08 is

when "00" => 
if branch_prediction = '1' then
previous08 <= previous08 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous08 <= previous08 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous08 <= previous08 + "01";
miss_pred <=miss_pred + 1;
 else
previous08 <= previous08 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous08 <= previous08+ "01";
else
previous08 <= previous08- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous08<=previous08; 
else
previous08<=previous08 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous08 <= previous08;
end case;

when "1001" =>
case previous09 is

when "00" => 
if branch_prediction = '1' then
previous09 <= previous09 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous09 <= previous09 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous09 <= previous09 + "01";
miss_pred <=miss_pred + 1;
 else
previous09 <= previous09 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous09<= previous09+ "01";
else
previous09 <= previous09 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous09<=previous09; 
else
previous09<=previous09 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous09 <= previous09;
end case;

when "1010" =>
case previous010 is

when "00" => 
if branch_prediction = '1' then
previous010 <= previous010 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous010 <= previous010 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous010 <= previous010 + "01";
miss_pred <=miss_pred + 1;
 else
previous010 <= previous010 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous010<= previous010+ "01";
else
previous010 <= previous010- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous010<=previous010; 
else
previous010<=previous010 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous010 <= previous010;
end case;

when "1011" =>
case previous011 is

when "00" => 
if branch_prediction = '1' then
previous011 <= previous011 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous011 <= previous011 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous011 <= previous011 + "01";
miss_pred <=miss_pred + 1;
 else
previous011 <= previous011 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous011<= previous011+ "01";
else
previous011 <= previous011- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous011<=previous011; 
else
previous011<=previous011 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous011 <= previous011;
end case;

when "1100" =>
case previous012 is

when "00" => 
if branch_prediction = '1' then
previous012 <= previous012 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous012 <= previous012 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous012 <= previous012 + "01";
miss_pred <=miss_pred + 1;
 else
previous012 <= previous012 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous012<= previous012+ "01";
else
previous012 <= previous012- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous012<=previous012; 
else
previous012<=previous012 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous012 <= previous012;
end case;

when "1101" =>
case previous013 is

when "00" => 
if branch_prediction = '1' then
previous013 <= previous013 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous013 <= previous013 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous013 <= previous013 + "01";
miss_pred <=miss_pred + 1;
 else
previous013 <= previous013 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous013<= previous013+ "01";
else
previous013 <= previous013- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous013<=previous013; 
else
previous013<=previous013 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous013 <= previous013;
end case;

when "1110" =>
case previous014 is

when "00" => 
if branch_prediction = '1' then
previous014 <= previous014 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous014<= previous014 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous014<= previous014 + "01";
miss_pred <=miss_pred + 1;
 else
previous014 <= previous014 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous014<= previous014+ "01";
else
previous014 <= previous014- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous014<=previous014; 
else
previous014<=previous014 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous014 <= previous014;
end case;

when "1111" =>
case previous015 is

when "00" => 
if branch_prediction = '1' then
previous015 <= previous015 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous115<= previous015 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous015<= previous015 + "01";
miss_pred <=miss_pred + 1;
 else
previous015 <= previous015 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous015<= previous015+ "01";
else
previous015 <= previous015- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous015<=previous015; 
else
previous015<=previous015 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous015 <= previous015;
end case;
temp_global<=global_history;
global_history(3)<=branch_prediction;
when others => global_history <= global_history;
end case;



elsif(branch_address='1') then
case global_history is
when "0000" =>
case previous10 is
when "00" => 
if branch_prediction = '1' then
previous10 <= previous10 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous10 <= previous10 ;
end if;
when "01" =>
 if branch_prediction = '1' then 
previous10 <= previous10 + "01";
miss_pred <=miss_pred + 1;
 else
previous10 <= previous10 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous10 <= previous10 + "01";
else
previous10 <= previous10 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous10 <=previous10; 
else
previous10 <=previous10 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous10 <= previous10;
end case;

when "0001" =>
case previous11 is

when "00" => 
if branch_prediction = '1' then
previous11 <= previous11 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous11 <= previous11 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous11 <= previous11 + "01";
miss_pred <=miss_pred + 1;
 else
previous11 <= previous11 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous11 <= previous11 + "01";
else
previous11 <= previous11 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous11 <=previous11; 
else
previous11 <=previous11 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous11 <= previous11;
end case;

when "0010" =>
case previous12 is

when "00" => 
if branch_prediction = '1' then
previous12 <= previous12 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous12 <= previous12 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous12 <= previous12 + "01";
miss_pred <=miss_pred + 1;
 else
previous12 <= previous12 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous12 <= previous12+ "01";
else
previous12 <= previous12 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous12 <=previous12; 
else
previous12 <=previous12 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous12 <= previous12;
end case;

when "0011" =>
case previous13 is

when "00" => 
if branch_prediction = '1' then
previous13 <= previous13 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous13 <= previous13 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous13 <= previous13 + "01";
miss_pred <=miss_pred + 1;
 else
previous13 <= previous13 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous13 <= previous13+ "01";
else
previous13 <= previous13 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous13 <=previous13; 
else
previous13<=previous13 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous13 <= previous13;
end case;

when "0100" =>
case previous14 is

when "00" => 
if branch_prediction = '1' then
previous14 <= previous14 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous14 <= previous14 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous14 <= previous14 + "01";
miss_pred <=miss_pred + 1;
 else
previous14 <= previous14 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous14 <= previous14+ "01";
else
previous14<= previous14 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous14 <=previous14; 
else
previous14<=previous14 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous14 <= previous14;
end case;

when "0101" =>
case previous15 is

when "00" => 
if branch_prediction = '1' then
previous15 <= previous15 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous15 <= previous15 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous15 <= previous15 + "01";
miss_pred <=miss_pred + 1;
 else
previous15 <= previous15 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous15 <= previous15+ "01";
else
previous15 <= previous15 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous15<=previous15; 
else
previous15<=previous15 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous15 <= previous15;
end case;

when "0110" =>
case previous16 is

when "00" => 
if branch_prediction = '1' then
previous16 <= previous16 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous16 <= previous16 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous16 <= previous16 + "01";
miss_pred <=miss_pred + 1;
 else
previous16 <= previous16 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous16<= previous16+ "01";
else
previous16 <= previous16- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous16<=previous16; 
else
previous16<=previous16 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous16 <= previous16;
end case;

when "0111" =>
case previous17 is

when "00" => 
if branch_prediction = '1' then
previous17 <= previous17 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous17 <= previous17 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous17 <= previous17 + "01";
miss_pred <=miss_pred + 1;
 else
previous17 <= previous17 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous17 <= previous17+ "01";
else
previous17 <= previous17 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous17<=previous17; 
else
previous17<=previous17 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous17 <= previous17;
end case;

when "1000" =>
case previous18 is

when "00" => 
if branch_prediction = '1' then
previous18 <= previous18 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous18 <= previous18 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous18 <= previous18 + "01";
miss_pred <=miss_pred + 1;
 else
previous18 <= previous18 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous18 <= previous18+ "01";
else
previous18 <= previous18- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous18<=previous18; 
else
previous18<=previous18 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous18 <= previous18;
end case;

when "1001" =>
case previous19 is

when "00" => 
if branch_prediction = '1' then
previous19 <= previous19 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous19 <= previous19 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous19 <= previous19 + "01";
miss_pred <=miss_pred + 1;
 else
previous19 <= previous19 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous19<= previous19+ "01";
else
previous19 <= previous19 - "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous19<=previous19; 
else
previous19<=previous19 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous19 <= previous19;
end case;

when "1010" =>
case previous110 is

when "00" => 
if branch_prediction = '1' then
previous110 <= previous110 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous110 <= previous110 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous110 <= previous110 + "01";
miss_pred <=miss_pred + 1;
 else
previous110 <= previous110 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous110<= previous110+ "01";
else
previous110 <= previous110- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous110<=previous110; 
else
previous110<=previous110 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous110 <= previous110;
end case;

when "1011" =>
case previous111 is

when "00" => 
if branch_prediction = '1' then
previous111 <= previous111 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous111 <= previous111 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous111 <= previous111 + "01";
miss_pred <=miss_pred + 1;
 else
previous111 <= previous111 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous111<= previous111+ "01";
else
previous111 <= previous111- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous111<=previous111; 
else
previous111<=previous111 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous111 <= previous111;
end case;

when "1100" =>
case previous112 is

when "00" => 
if branch_prediction = '1' then
previous112 <= previous112 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous112 <= previous112 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous112 <= previous112 + "01";
miss_pred <=miss_pred + 1;
 else
previous112 <= previous112 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous112<= previous112+ "01";
else
previous112 <= previous112- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous112<=previous112; 
else
previous112<=previous112 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous112 <= previous112;
end case;

when "1101" =>
case previous113 is

when "00" => 
if branch_prediction = '1' then
previous113 <= previous113 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous113 <= previous113 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous113 <= previous113 + "01";
miss_pred <=miss_pred + 1;
 else
previous113 <= previous113 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous113<= previous113+ "01";
else
previous113 <= previous113- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous113<=previous113; 
else
previous113<=previous113 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous113 <= previous113;
end case;

when "1110" =>
case previous114 is

when "00" => 
if branch_prediction = '1' then
previous114 <= previous114 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous114<= previous114 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous114<= previous114 + "01";
miss_pred <=miss_pred + 1;
 else
previous114 <= previous114 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous114<= previous114+ "01";
else
previous114 <= previous114- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous114<=previous114; 
else
previous114<=previous114 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous114 <= previous114;
end case;

when "1111" =>
case previous115 is

when "00" => 
if branch_prediction = '1' then
previous115 <= previous115 + "01" ;
miss_pred <= miss_pred + 1 ;
else
previous115<= previous115 ;
 end if;
when "01" =>
 if branch_prediction = '1' then 
previous115<= previous115 + "01";
miss_pred <=miss_pred + 1;
 else
previous115 <= previous115 - "01" ;
end if;
when "10" => 
if branch_prediction = '1' then 
previous115<= previous115+ "01";
else
previous115 <= previous115- "01" ;
miss_pred <= miss_pred + 1;
end if;

when "11" => 
if branch_prediction = '1' then 
previous115<=previous115; 
else
previous115<=previous115 - "01" ;
miss_pred <= miss_pred + 1; 
end if;
when others => previous115 <= previous115;
end case;
when others => global_history <= global_history;
end case;
end if;
temp_global<=global_history;
global_history(2 downto 0)<=temp_global(3 downto 1);
global_history(3)<=branch_prediction;
end process;
miss_prediction<=miss_pred;
end;


