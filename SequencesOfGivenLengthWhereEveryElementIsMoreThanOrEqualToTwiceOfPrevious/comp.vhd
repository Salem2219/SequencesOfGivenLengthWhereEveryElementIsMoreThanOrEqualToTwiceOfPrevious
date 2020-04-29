library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity comp is
    port (
    i, j : in std_logic_vector(3 downto 0);
    y : out std_logic);
end comp;

architecture rtl of comp is
signal x1, x2, x3 : std_logic;
begin
    x1 <= '1' when i = "0000" else '0';
    x2 <= '1' when j = "0000" else '0';
    x3 <= '1' when unsigned(i) < unsigned(j) else '0';
    y <= x1 or x2 or x3;
    

end rtl;
