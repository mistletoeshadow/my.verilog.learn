`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:21 08/18/2021
// Design Name:   cnt_led
// Module Name:   E:/FPGA/my.verilog.learn/cnt_led/sim/tb/cnt_led_tb.v
// Project Name:  cnt_led
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cnt_led
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cnt_led_tb;

	// Inputs
	reg clk;
	reg rst_n;

	// Outputs
	wire led;

	// Instantiate the Unit Under Test (UUT)
	cnt_led uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.led(led)
	);

	initial clk =1;
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		//clk = 0;
		rst_n = 0;
		#100;
		rst_n = 1;
		// Wait 100 ns for global reset to finish
		#50_000_0000;
        
		// Add stimulus here
		$stop;
	end
      
endmodule

