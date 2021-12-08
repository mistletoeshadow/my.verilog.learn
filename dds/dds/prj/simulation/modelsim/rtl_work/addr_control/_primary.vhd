library verilog;
use verilog.vl_types.all;
entity addr_control is
    generic(
        P               : integer := 0
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        wave_sel        : in     vl_logic_vector(1 downto 0);
        wave_freq       : in     vl_logic_vector(19 downto 0);
        rom_addr        : out    vl_logic_vector(9 downto 0)
    );
end addr_control;
