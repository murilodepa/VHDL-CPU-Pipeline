library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entidade mini_mux_2, multiplexador de 2 bits
entity mini_mux_2 is


    Port ( SEL : in  STD_LOGIC; -- Entrada de seleção, podendo ser 1 ou 0
           A   : in  STD_LOGIC_VECTOR (0 to 4); -- Entrada A do multiplexador 
           B   : in  STD_LOGIC_VECTOR (0 to 4); -- Entrada B do multiplexador 
           X   : out STD_LOGIC_VECTOR (0 to 4)); -- Única saída do multiplexador
end mini_mux_2; -- Finalizando a entidade mini_mux_2

architecture Behavioral of mini_mux_2 is --Architecture Behavioral
begin
    X <= A when (SEL = '1') else B; -- Se a entrada "SEL" for igual a 1, a saída X recebe A, se não recebe B

end Behavioral; -- Finalizando Behavioral