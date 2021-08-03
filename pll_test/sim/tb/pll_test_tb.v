`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:46:51 08/04/2021
// Design Name:   pll_test
// Module Name:   E:/FPGA/my.verilog.learn/pll_test/sim/tb/pll_test_tb.v
// Project Name:  pll_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pll_test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pll_test_tb;

	// Inputs
	reg clk;
	reg rst_n;

	// Outputs
	wire clkout1;
	wire clkout2;
	wire clkout3;
	wire clkout4;

	// Instantiate the Unit Under Test (UUT)
	pll_test uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.clkout1(clkout1), 
		.clkout2(clkout2), 
		.clkout3(clkout3), 
		.clkout4(clkout4)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        rst_n = 1'b1;
		// Add stimulus here

	end

always#10 clk = ~clk;//50Mhz
      
endmodule

