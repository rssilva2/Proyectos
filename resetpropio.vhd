LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY resetpropio IS
	PORT(clock, reset : IN STD_LOGIC;
			salida: buffer STD_LOGIC);
END resetpropio;

ARCHITECTURE sol OF resetpropio IS
BEGIN

	PROCESS(clock,reset)
	BEGIN
		if reset='0' then salida<='1';
		elsif (clock'event and clock='1') then
			salida <='0';
			salida <='1';
		end if;
end process;
end sol;