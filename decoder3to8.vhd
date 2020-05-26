--Hazirlayan: Guzin Kanburoglu 365254--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity decoder3to8 is
 port(a : in STD_LOGIC_VECTOR(2 downto 0);
      b : out STD_LOGIC_VECTOR(7 downto 0));
end decoder3to8;
 
architecture bhv of decoder3to8 is
begin
  
  b(0)<= (not a(2)) and (not a(1)) and (not a(0));
  b(1)<= (not a(2)) and (not a(1)) and a(0);
  b(2)<= (not a(2)) and a(1) and (not a(0));
  b(3)<= (not a(2)) and a(1) and a(0);
  b(4)<= a(2) and (not a(1)) and (not a(0));
  b(5)<= a(2) and (not a(1)) and a(0);
  b(6)<= a(2) and a(1) and (not a(0));
  b(7)<= a(2) and a(1) and a(0);
  
end bhv;
