--Copyright 2025 Andrey S. Ionisyan (anserion@gmail.com)
--Licensed under the Apache License, Version 2.0 (the "License");
--you may not use this file except in compliance with the License.
--You may obtain a copy of the License at
--    http://www.apache.org/licenses/LICENSE-2.0
--Unless required by applicable law or agreed to in writing, software
--distributed under the License is distributed on an "AS IS" BASIS,
--WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--See the License for the specific language governing permissions and
--limitations under the License.
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG is
    Port (KEY1,KEY2,KEY3,KEY4: in STD_LOGIC;
          LED1,LED2,LED3: out STD_LOGIC);
end REG;

architecture RTL of REG is
component D_trigger port (D,C: in std_logic; Q,nQ: out std_logic); end component;
signal GND1,GND2,GND3: std_logic;
begin
DD1: D_trigger port map (KEY2,KEY1,LED1,GND1);
DD2: D_trigger port map (KEY3,KEY1,LED2,GND2);
DD3: D_trigger port map (KEY4,KEY1,LED3,GND3);
end RTL;
