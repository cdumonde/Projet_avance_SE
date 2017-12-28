library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity top_level is
    Port ( 
           CLK    : in  STD_LOGIC;
           RESET     : in  STD_LOGIC;
           SW        : in  STD_LOGIC_VECTOR ( 1 downto 0);
           LED    : out STD_LOGIC_VECTOR (15 downto 0);
           RsRx      : in  STD_LOGIC;
           RsTx      : out STD_LOGIC
 );
end top_level;

architecture Behavioral of top_level is
    
COMPONENT top_level_0 is 
  Port( 
  clk     :   in STD_LOGIC;
 reset     :   in STD_LOGIC;
 e_dout  :   in STD_LOGIC_VECTOR(7 downto 0);
 s_din   :   out STD_LOGIC_VECTOR(7 downto 0);
 e_empty_n   :   in STD_LOGIC;
 e_read      :   out STD_LOGIC;
 s_full_n    :   in STD_LOGIC;
 s_write     :   out STD_LOGIC);
end component;
   
 SIGNAL   dat  : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');

 SIGNAL   data_from_uart    : STD_LOGIC_VECTOR (7 downto 0);
 SIGNAL   data_from_uart_en : STD_LOGIC;

 SIGNAL   data_to_uart      : STD_LOGIC_VECTOR (7 downto 0);
 SIGNAL   data_to_uart_en   : STD_LOGIC;

 SIGNAL   counter           : UNSIGNED (15 downto 0) := (others=>'0');

 SIGNAL   input_data  : UNSIGNED (15 downto 0) := (others=>'0');
 SIGNAL   output_data : UNSIGNED (15 downto 0) := (others=>'0');

 SIGNAL   read_uart_data  : STD_LOGIC;
 SIGNAL   uart_is_sending : STD_LOGIC;

 CONSTANT not_full  : STD_LOGIC := '1';


BEGIN



    PROCESS(clk)
    BEGIN
        IF clk'event AND clk = '1' THEN
            IF RESET = '1' THEN
                input_data <= (others=>'0');
            ELSIF data_from_uart_en = '1' THEN
                input_data <= input_data + TO_UNSIGNED(1, 1);
            END IF;
        END IF;
    END PROCESS;

    PROCESS(clk)
    BEGIN
        IF clk'event AND clk = '1' THEN
            IF RESET = '1' THEN
                output_data <= (others=>'0');
            ELSIF data_to_uart_en = '1' THEN
                output_data <= output_data + TO_UNSIGNED(1, 1);
            END IF;
        END IF;
    END PROCESS;

 --------------------------------------------------------
 -----                LED Control                  -----
 --------------------------------------------------------

    LED <=  
            STD_LOGIC_VECTOR( input_data  ) WHEN SW    = "01" ELSE 
            STD_LOGIC_VECTOR( output_data ) WHEN SW    = "10" ELSE
            "00000000" & dat                WHEN RESET =  '0' ELSE
            (OTHERS => '1');
       
wrapper : top_level_0
 PORT MAP(
   reset => RESET,
   clk => CLK,
   e_dout => data_from_uart,
   s_din => data_to_uart,
   e_empty_n => data_from_uart_en,
   e_read => open,
   s_full_n => not_full,
   s_write => data_to_uart_en);

end Behavioral;