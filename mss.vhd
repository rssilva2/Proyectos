--MSS

LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
entity MSS is
	port	( start, resetn,clock, max, min, regresar : in std_logic;
				reset_all, ensensor, minimo, maximo: out std_logic);
end MSS;

architecture sol of MSS is
type estado is (ta, tb, tc, td, tf, tg,th);
signal y: estado;
begin
MSS_transiciones:process(resetn,clock)
	begin
		if (resetn='0') then y<=ta;
		elsif(clock'event and clock='1') then
			case y is
				when ta =>	if start='1' then y<=tb;--presiono start
										else y<=ta;end if;
				when tb =>	if start='0' then y<=tc;--suelto start
										else y<=tb;end if;
				when tc => y<= td;
				when td => y<=tf;
				when tf=> if max ='1' then y<= tg;--
								elsif min ='1' then y<=th;
								else y<=tf;end if;
				when tg=> if regresar='1' then y<=tf;---max
							else y<=tg;end if;
				when th=> if regresar='1' then y<=tf;--min
							else y<= th;end if;
		end case;
		end if;
end process;


MSS_salidas: process (y)
		begin--poner todas las salidas como cero para poder activar cada bloque en el estado que se desea
		reset_all<='1';   ensensor<='0'; minimo<='0'; maximo<='0';
		
		
		case y is 						
				when ta =>
				when tb =>
				when tc => reset_all<='0'; 
				when td =>
				when tf => ensensor<='1';
				when tg =>  maximo<='1'; 
				when th =>  minimo<='1';
						end case;
	end process;
end sol;
			