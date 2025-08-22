LIBRARY ieee; USE ieee.std_logic_1164.ALL;
ENTITY tb_REG IS
END tb_REG;
ARCHITECTURE behavior OF tb_REG IS 
   COMPONENT REG 
   PORT(KEY1,KEY2,KEY3,KEY4: in std_logic; LED1,LED2,LED3: out std_logic);
   END COMPONENT;
   --Inputs
   signal KEY1,KEY2,KEY3,KEY4: std_logic := '1';
 	--Outputs
   signal LED1,LED2,LED3: std_logic;
BEGIN
   uut: REG PORT MAP (KEY1,KEY2,KEY3,KEY4,LED1,LED2,LED3);
   tb_proc: process
   begin		
	  WAIT FOR 100ns;
	  KEY1<='1'; KEY2<='1'; WAIT FOR 100ns;
	  KEY1<='0'; KEY2<='0'; WAIT FOR 100ns;
	  KEY1<='1'; KEY3<='1'; WAIT FOR 100ns;
	  KEY1<='0'; KEY3<='0'; WAIT FOR 100ns;
	  KEY1<='1'; KEY4<='1'; WAIT FOR 100ns;
	  KEY1<='0'; KEY4<='0'; WAIT;
   end process;
END;