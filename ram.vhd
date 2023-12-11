library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ram is
  port (
    clk   : in  std_logic;
    ew      : in  std_logic;
    add : in  std_logic_vector(1 downto 0);
    din  : in  std_logic_vector(7 downto 0);
    dout : out std_logic_vector(7 downto 0)
  );
end ram;

architecture rtl of ram is
	signal memo_1 : std_logic_vector(7 downto 0):= "00000000";
	signal memo_2 : std_logic_vector(7 downto 0):= "00000000";
	signal memo_3 : std_logic_vector(7 downto 0):= "00000000";
	signal memo_4 : std_logic_vector(7 downto 0):= "00000000";
	signal buffer_ram : std_logic_vector(7 downto 0):= "00000000";
begin

	process (clk)
	begin  
		if (clk'event and clk = '1') then
			if(ew = '1') then
				case add is
					when "00" => memo_1 <= din;
					when "01" => memo_2 <= din;
					when "10" => memo_3 <= din;
					when others => memo_4 <= din;
				end case;
			else
				case add is
					when "00" => buffer_ram <= memo_1;
					when "01" => buffer_ram <= memo_2;
					when "10" => buffer_ram <= memo_3;
					when others => buffer_ram <= memo_4;
				end case;
			end if;
		end if;
	end process;
	dout <= buffer_ram;

end rtl;