library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ram is
port(clk, wr1, wr2, wr3 : in std_logic;
i, j, m, n : in std_logic_vector(3 downto 0);
y : out std_logic_vector(7 downto 0));
end ram;
architecture rtl of ram is
type ram_type is array (0 to 15, 0 to 15) of
std_logic_vector(7 downto 0);
signal program: ram_type;
signal iminus1, jminus1, idiv2 : std_logic_vector(3 downto 0);
signal T1, T2, T1plusT2 : std_logic_vector(7 downto 0);

component minus1 is
    port (a : in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0));
end component;
component adder is
    port (a, b : in std_logic_vector(7 downto 0);
    y : out std_logic_vector(7 downto 0));
end component;
component div2 is
    port (a : in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0));
end component;

begin
u1 : minus1 port map (i, iminus1);
u2 : minus1 port map (j, jminus1);
u3 : adder port map (T1, T2, T1plusT2);
u4 : div2 port map (i, idiv2);
T1 <= program(conv_integer(unsigned(iminus1)), conv_integer(unsigned(j)));
T2 <= program(conv_integer(unsigned(idiv2)), conv_integer(unsigned(jminus1)));
process(clk)
begin
if (rising_edge(clk)) then
if (wr1 = '1') then
program(conv_integer(unsigned(i)), conv_integer(unsigned(j))) <= "00000000";
elsif (wr2 = '1') then
program(conv_integer(unsigned(i)), conv_integer(unsigned(j))) <= "0000" & i;
elsif (wr3 = '1') then
program(conv_integer(unsigned(i)), conv_integer(unsigned(j))) <= T1plusT2;
end if;
end if;
end process;
y <= program(conv_integer(unsigned(m)), conv_integer(unsigned(n)));
end rtl;