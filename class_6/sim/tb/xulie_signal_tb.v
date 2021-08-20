`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:59:09 08/19/2021
// Design Name:   xulie_signal
// Module Name:   E:/FPGA/my.verilog.learn/class_6/sim/tb/xulie_signal_tb.v
// Project Name:  xulie_signal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: xulie_signal
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module xulie_signal_tb;

	// Inputs
	reg clk;
	reg rst_n;
	reg en;
	reg [7:0] data;

	// Outputs
	wire tx;
	wire tx_done;

	// Instantiate the Unit Under Test (UUT)
	xulie_signal uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.en(en), 
		.data(data), 
		.tx(tx), 
		.tx_done(tx_done)
	);

	initial clk =1;
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		rst_n = 0;
		en = 0;
		// Wait 100 ns for global reset to finish
		#100;
		rst_n = 1;
		#100;
		en = 1;

        data = 8'b1001_1100;
		#8_000_000;
		$stop;
		// Add stimulus here

	end
      
endmodule

