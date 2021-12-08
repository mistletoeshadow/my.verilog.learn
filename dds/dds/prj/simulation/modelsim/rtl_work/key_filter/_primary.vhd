library verilog;
use verilog.vl_types.all;
entity key_filter is
    generic(
        MASK_TIME       : integer := 250000
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        ikey            : in     vl_logic;
        okey            : out    vl_logic
    );
end key_filter;
