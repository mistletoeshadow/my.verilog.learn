`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:42:51 08/18/2021 
// Design Name: 
// Module Name:    led_driver 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module led_driver(
    input       clk,
    input       rst_n,
    output   led_1,
    output   led_2,
    output   led_4,
    output   led_5,
    output   led_3 
    );

    cnt_led u_cnt_led_1 (
		.clk(clk), 
		.rst_n(rst_n),
        .cnt_max(49_999), 
		.led(led_1)
	);

    cnt_led u_cnt_led_2 (
		.clk(clk), 
		.rst_n(rst_n),
        .cnt_max(24_999), 
		.led(led_2)
	);

    cnt_led_2 u_cnt_led_3 (
		.clk(clk), 
		.rst_n(rst_n),
        
		.led(led_3)
	);

    cnt_led_2
        #(
            .cnt_max(24_999)
        )
     u_cnt_led_4 (
		.clk(clk), 
		.rst_n(rst_n),
        
		.led(led_4)
	);

    cnt_led_2     u_cnt_led_5 (
		.clk(clk), 
		.rst_n(rst_n),
        
		.led(led_5)
	);
    defparam u_cnt_led_5.cnt_max = 12499;

endmodule
