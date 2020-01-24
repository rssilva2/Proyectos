library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity convertidor is
	port(
	rps,rpm,max,min: in std_logic;
	tope:out std_logic_vector(23 downto 0);
	milles, cientos, decenas, unidades: in std_logic_vector(3 downto 0);---rps o rpm
	maxmilles, maxcientos, maxdecenas, maxunidades: in std_logic_vector(3 downto 0);--max
	minmilles, mincientos, mindecenas, minunidades: in std_logic_vector(3 downto 0);--min
	smilles, scientos, sdecenas, sunidades: out std_logic_vector(7 downto 0));
end convertidor;
architecture sol of convertidor is
begin
		process(rps,rpm,max,min)
			begin
			
			
				if max='1' then --max---------------------------------------------
					case maxmilles is
						
					
						WHEN "0001" => smilles<= x"31";tope <= x"4D4158";
						WHEN "0010" => smilles<= x"32";tope <= x"4D4158";
						WHEN "0011" => smilles<= x"33";tope <= x"4D4158";
						WHEN "0100" => smilles<= x"34";tope <= x"4D4158";
						WHEN "0101" => smilles<= x"35";tope <= x"4D4158";
						WHEN "0110" => smilles<= x"36";tope <= x"4D4158";
						WHEN "0111" => smilles<= x"37";tope <= x"4D4158";
						WHEN "1000" => smilles<= x"38";tope <= x"4D4158";
						WHEN "1001" => smilles<= x"39";tope <= x"4D4158";
						WHEN "0000" => smilles<= x"30";tope <= x"4D4158";
					WHEN OTHERS =>  smilles<= x"00";tope <= x"202020";
					END CASE;
					
					case maxcientos is
					
					
						WHEN "0001" => scientos<= x"31";tope <= x"4D4158";
						WHEN "0010" => scientos<= x"32";tope <= x"4D4158";
						WHEN "0011" => scientos<= x"33";tope <= x"4D4158";
						WHEN "0100" => scientos<= x"34";tope <= x"4D4158";
						WHEN "0101" => scientos<= x"35";tope <= x"4D4158";
						WHEN "0110" => scientos<= x"36";tope <= x"4D4158";
						WHEN "0111" => scientos<= x"37";tope <= x"4D4158";
						WHEN "1000" => scientos<= x"38";tope <= x"4D4158";
						WHEN "1001" => scientos<= x"39";tope <= x"4D4158";
						WHEN "0000" => scientos<= x"30";tope <= x"4D4158";
					WHEN OTHERS =>    scientos<= x"00";tope <= x"202020";
				END CASE;
				
				case maxdecenas is
					
					
						WHEN "0001" => sdecenas<= x"31";tope <= x"4D4158";
						WHEN "0010" => sdecenas<= x"32";tope <= x"4D4158";
						WHEN "0011" => sdecenas<= x"33";tope <= x"4D4158";
						WHEN "0100" => sdecenas<= x"34";tope <= x"4D4158";
						WHEN "0101" => sdecenas<= x"35";tope <= x"4D4158";
						WHEN "0110" => sdecenas<= x"36";tope <= x"4D4158";
						WHEN "0111" => sdecenas<= x"37";tope <= x"4D4158";
						WHEN "1000" => sdecenas<= x"38";tope <= x"4D4158";
						WHEN "1001" => sdecenas<= x"39";tope <= x"4D4158";
						WHEN "0000" => sdecenas<= x"30";tope <= x"4D4158";
					WHEN OTHERS =>    sdecenas<= x"00";tope <= x"202020";
				END CASE;
				
				
				case maxunidades is
					
					
						WHEN "0001" => sunidades<= x"31";tope <= x"4D4158";
						WHEN "0010" => sunidades<= x"32";tope <= x"4D4158";
						WHEN "0011" => sunidades<= x"33";tope <= x"4D4158";
						WHEN "0100" => sunidades<= x"34";tope <= x"4D4158";
						WHEN "0101" => sunidades<= x"35";tope <= x"4D4158";
						WHEN "0110" => sunidades<= x"36";tope <= x"4D4158";
						WHEN "0111" => sunidades<= x"37";tope <= x"4D4158";
						WHEN "1000" => sunidades<= x"38";tope <= x"4D4158";
						WHEN "1001" => sunidades<= x"39";tope <= x"4D4158";
						WHEN "0000" => sunidades<= x"30";tope <= x"4D4158";
					WHEN OTHERS =>    sunidades<= x"00";tope <= x"202020";
				END CASE;	
				



						elsif min='1' then --min----------------------------------------
					case minmilles is
						
					
						WHEN "0001" => smilles<= x"31";tope <= x"4D494E";
						WHEN "0010" => smilles<= x"32";tope <= x"4D494E";
						WHEN "0011" => smilles<= x"33";tope <= x"4D494E";
						WHEN "0100" => smilles<= x"34";tope <= x"4D494E";
						WHEN "0101" => smilles<= x"35";tope <= x"4D494E";
						WHEN "0110" => smilles<= x"36";tope <= x"4D494E";
						WHEN "0111" => smilles<= x"37";tope <= x"4D494E";
						WHEN "1000" => smilles<= x"38";tope <= x"4D494E";
						WHEN "1001" => smilles<= x"39";tope <= x"4D494E";
						WHEN "0000" => smilles<= x"30";tope <= x"4D494E";
					WHEN OTHERS =>  smilles<= x"00";tope <= x"202020";
					END CASE;
					
					case mincientos is
					
					
						WHEN "0001" => scientos<= x"31";tope <= x"4D494E";
						WHEN "0010" => scientos<= x"32";tope <= x"4D494E";
						WHEN "0011" => scientos<= x"33";tope <= x"4D494E";
						WHEN "0100" => scientos<= x"34";tope <= x"4D494E";
						WHEN "0101" => scientos<= x"35";tope <= x"4D494E";
						WHEN "0110" => scientos<= x"36";tope <= x"4D494E";
						WHEN "0111" => scientos<= x"37";tope <= x"4D494E";
						WHEN "1000" => scientos<= x"38";tope <= x"4D494E";
						WHEN "1001" => scientos<= x"39";tope <= x"4D494E";
						WHEN "0000" => scientos<= x"30";tope <= x"4D494E";
					WHEN OTHERS =>    scientos<= x"00";tope <= x"202020";
				END CASE;
				
				case mindecenas is
					
					
						WHEN "0001" => sdecenas<= x"31";tope <= x"4D494E";
						WHEN "0010" => sdecenas<= x"32";tope <= x"4D494E";
						WHEN "0011" => sdecenas<= x"33";tope <= x"4D494E";
						WHEN "0100" => sdecenas<= x"34";tope <= x"4D494E";
						WHEN "0101" => sdecenas<= x"35";tope <= x"4D494E";
						WHEN "0110" => sdecenas<= x"36";tope <= x"4D494E";
						WHEN "0111" => sdecenas<= x"37";tope <= x"4D494E";
						WHEN "1000" => sdecenas<= x"38";tope <= x"4D494E";
						WHEN "1001" => sdecenas<= x"39";tope <= x"4D494E";
						WHEN "0000" => sdecenas<= x"30";tope <= x"4D494E";
					WHEN OTHERS =>    sdecenas<= x"00";tope <= x"202020";
				END CASE;
				
				
				case minunidades is
					
					
						WHEN "0001" => sunidades<= x"31";tope <= x"4D494E";
						WHEN "0010" => sunidades<= x"32";tope <= x"4D494E";
						WHEN "0011" => sunidades<= x"33";tope <= x"4D494E";
						WHEN "0100" => sunidades<= x"34";tope <= x"4D494E";
						WHEN "0101" => sunidades<= x"35";tope <= x"4D494E";
						WHEN "0110" => sunidades<= x"36";tope <= x"4D494E";
						WHEN "0111" => sunidades<= x"37";tope <= x"4D494E";
						WHEN "1000" => sunidades<= x"38";tope <= x"4D494E";
						WHEN "1001" => sunidades<= x"39";tope <= x"4D494E";
						WHEN "0000" => sunidades<= x"30";tope <= x"4D494E";
					WHEN OTHERS =>    sunidades<= x"00";tope <= x"202020";
				END CASE;					
			
			
				elsif rps='1' then --rps-------------------------------------------------------------
					case milles is
						
					
						WHEN "0001" => smilles<= x"31";tope <= x"525053";
						WHEN "0010" => smilles<= x"32";tope <= x"525053";
						WHEN "0011" => smilles<= x"33";tope <= x"525053";
						WHEN "0100" => smilles<= x"34";tope <= x"525053";
						WHEN "0101" => smilles<= x"35";tope <= x"525053";
						WHEN "0110" => smilles<= x"36";tope <= x"525053";
						WHEN "0111" => smilles<= x"37";tope <= x"525053";
						WHEN "1000" => smilles<= x"38";tope <= x"525053";
						WHEN "1001" => smilles<= x"39";tope <= x"525053";
						WHEN "0000" => smilles<= x"30";tope <= x"525053";
					WHEN OTHERS =>  smilles<= x"00";tope <= x"202020";
					END CASE;
					
					case cientos is
					
					
						WHEN "0001" => scientos<= x"31";tope <= x"525053";
						WHEN "0010" => scientos<= x"32";tope <= x"525053";
						WHEN "0011" => scientos<= x"33";tope <= x"525053";
						WHEN "0100" => scientos<= x"34";tope <= x"525053";
						WHEN "0101" => scientos<= x"35";tope <= x"525053";
						WHEN "0110" => scientos<= x"36";tope <= x"525053";
						WHEN "0111" => scientos<= x"37";tope <= x"525053";
						WHEN "1000" => scientos<= x"38";tope <= x"525053";
						WHEN "1001" => scientos<= x"39";tope <= x"525053";
						WHEN "0000" => scientos<= x"30";tope <= x"525053";
					WHEN OTHERS =>    scientos<= x"00";tope <= x"202020";
				END CASE;
				
				case decenas is
					
					
						WHEN "0001" => sdecenas<= x"31";tope <= x"525053";
						WHEN "0010" => sdecenas<= x"32";tope <= x"525053";
						WHEN "0011" => sdecenas<= x"33";tope <= x"525053";
						WHEN "0100" => sdecenas<= x"34";tope <= x"525053";
						WHEN "0101" => sdecenas<= x"35";tope <= x"525053";
						WHEN "0110" => sdecenas<= x"36";tope <= x"525053";
						WHEN "0111" => sdecenas<= x"37";tope <= x"525053";
						WHEN "1000" => sdecenas<= x"38";tope <= x"525053";
						WHEN "1001" => sdecenas<= x"39";tope <= x"525053";
						WHEN "0000" => sdecenas<= x"30";tope <= x"525053";
					WHEN OTHERS =>    sdecenas<= x"00";tope <= x"202020";
				END CASE;
				
				
				case unidades is
					
					
						WHEN "0001" => sunidades<= x"31";tope <= x"525053";
						WHEN "0010" => sunidades<= x"32";tope <= x"525053";
						WHEN "0011" => sunidades<= x"33";tope <= x"525053";
						WHEN "0100" => sunidades<= x"34";tope <= x"525053";
						WHEN "0101" => sunidades<= x"35";tope <= x"525053";
						WHEN "0110" => sunidades<= x"36";tope <= x"525053";
						WHEN "0111" => sunidades<= x"37";tope <= x"525053";
						WHEN "1000" => sunidades<= x"38";tope <= x"525053";
						WHEN "1001" => sunidades<= x"39";tope <= x"525053";
						WHEN "0000" => sunidades<= x"30";tope <= x"525053";
					WHEN OTHERS =>    sunidades<= x"00";tope <= x"202020";
				END CASE;	
				
			
			
			elsif rpm='1' then --rpm---------------------------------------------------
					case milles is
						
					
						WHEN "0001" => smilles<= x"31";tope <= x"52504D";
						WHEN "0010" => smilles<= x"32";tope <= x"52504D";
						WHEN "0011" => smilles<= x"33";tope <= x"52504D";
						WHEN "0100" => smilles<= x"34";tope <= x"52504D";
						WHEN "0101" => smilles<= x"35";tope <= x"52504D";
						WHEN "0110" => smilles<= x"36";tope <= x"52504D";
						WHEN "0111" => smilles<= x"37";tope <= x"52504D";
						WHEN "1000" => smilles<= x"38";tope <= x"52504D";
						WHEN "1001" => smilles<= x"39";tope <= x"52504D";
						WHEN "0000" => smilles<= x"30";tope <= x"52504D";
					WHEN OTHERS =>  smilles<= x"00";tope <= x"202020";
					END CASE;
					
					case cientos is
					
					
						WHEN "0001" => scientos<= x"31";tope <= x"52504D";
						WHEN "0010" => scientos<= x"32";tope <= x"52504D";
						WHEN "0011" => scientos<= x"33";tope <= x"52504D";
						WHEN "0100" => scientos<= x"34";tope <= x"52504D";
						WHEN "0101" => scientos<= x"35";tope <= x"52504D";
						WHEN "0110" => scientos<= x"36";tope <= x"52504D";
						WHEN "0111" => scientos<= x"37";tope <= x"52504D";
						WHEN "1000" => scientos<= x"38";tope <= x"52504D";
						WHEN "1001" => scientos<= x"39";tope <= x"52504D";
						WHEN "0000" => scientos<= x"30";tope <= x"52504D";
					WHEN OTHERS =>    scientos<= x"00";tope <= x"202020";
				END CASE;
				
				case decenas is
					
					
						WHEN "0001" => sdecenas<= x"31";tope <= x"52504D";
						WHEN "0010" => sdecenas<= x"32";tope <= x"52504D";
						WHEN "0011" => sdecenas<= x"33";tope <= x"52504D";
						WHEN "0100" => sdecenas<= x"34";tope <= x"52504D";
						WHEN "0101" => sdecenas<= x"35";tope <= x"52504D";
						WHEN "0110" => sdecenas<= x"36";tope <= x"52504D";
						WHEN "0111" => sdecenas<= x"37";tope <= x"52504D";
						WHEN "1000" => sdecenas<= x"38";tope <= x"52504D";
						WHEN "1001" => sdecenas<= x"39";tope <= x"52504D";
						WHEN "0000" => sdecenas<= x"30";tope <= x"52504D";
					WHEN OTHERS =>    sdecenas<= x"00";tope <= x"202020";
				END CASE;
				
				
				case unidades is
					
					
						WHEN "0001" => sunidades<= x"31";tope <= x"52504D";
						WHEN "0010" => sunidades<= x"32";tope <= x"52504D";
						WHEN "0011" => sunidades<= x"33";tope <= x"52504D";
						WHEN "0100" => sunidades<= x"34";tope <= x"52504D";
						WHEN "0101" => sunidades<= x"35";tope <= x"52504D";
						WHEN "0110" => sunidades<= x"36";tope <= x"52504D";
						WHEN "0111" => sunidades<= x"37";tope <= x"52504D";
						WHEN "1000" => sunidades<= x"38";tope <= x"52504D";
						WHEN "1001" => sunidades<= x"39";tope <= x"52504D";
						WHEN "0000" => sunidades<= x"30";tope <= x"52504D";
					WHEN OTHERS =>    sunidades<= x"00";tope <= x"202020";
				END CASE;	
				
				
			
				
			end if; 	
			
			
END process;
end sol;