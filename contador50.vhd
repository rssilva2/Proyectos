LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY contador50 IS
	PORT(clock,enable,reset : IN STD_LOGIC;
		 dos_seg : OUT STD_LOGIC;
		 Q : Buffer STD_LOGIC_VECTOR (5 downto 0));
END contador50;

ARCHITECTURE sol OF contador50 IS
BEGIN

	PROCESS(clock,reset)
	BEGIN
		if reset='0' then Q<="000000";dos_seg<='0';
  		elsif (clock'event and clock='1') then
			if enable='1' then
				if (Q="110010") then Q<="000000";dos_seg<='1';
				else Q<=Q+1;dos_seg<='0';
				end if;
			end if;
		end if;
	END PROCESS;
END sol;