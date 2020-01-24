LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY cont IS
	PORT(clockcont, clock1,enable,reset,reset2,rps : IN STD_LOGIC;
			salida,min, max: Buffer STD_LOGIC_VECTOR (11 downto 0));
END cont;

ARCHITECTURE sol OF cont IS
SIGNAL temp, cualquiera: STD_LOGIC_vector(11 downto 0);
BEGIN

	PROCESS(clockcont,reset)
	BEGIN
	if reset='0' then temp<="000000000000";cualquiera<="000000000000";
	elsif (clockcont'event and clockcont='1') then
		if enable ='1' then	
			cualquiera<= temp;
			temp <= temp +1;end if;
	end if;
			
	END PROCESS;
			
	PROCESS(clock1,reset2)
	BEGIN
	if reset2='0' then
	min<="111111111111";max<="000000000000"; salida<="000000000000";
	
	elsif (clock1'event and clock1='1') then
		
		if rps ='0' then
			salida<= cualquiera;
			if (temp > max) then
				max<=cualquiera;
				end if;
			if (min > temp) and (cualquiera>0)  then 
				min<=cualquiera;
				end if;
		
		else 
			salida<= cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera;
			if (temp > max) then
				max<=cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera;
				end if;
			if (min > temp) and (cualquiera>0)   then 
				min<=cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera+cualquiera;
				end if;
		end if;
	end if;


end process;
end sol;
	