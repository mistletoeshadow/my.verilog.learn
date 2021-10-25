`timescale 1ns / 1ps
`define clk_period 20
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:22:36 10/23/2021
// Design Name:   ram_top
// Module Name:   E:/FPGA/my.verilog.learn/ram/sim/tb/ram.v
// Project Name:  ram256x8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram;

	// Inputs
	reg clk;
	reg rst_n;
	reg key1;
	reg key2;

	// Outputs
	wire rs232_tx;
	wire state_led;
	wire tx_done;

	// Instantiate the Unit Under Test (UUT)
	ram_top uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.key1(key1), 
		.key2(key2), 
		.rs232_tx(rs232_tx), 
		.state_led(state_led), 
		.tx_done(tx_done)
	);

	//50Mhz
	initial clk = 1'b1;
	always#(`clk_period/2) clk = ~clk;
	 
	initial begin
		// Initialize Inputs
		rst_n = 0;
		key1 = 1;
		key2 = 1;
		#(`clk_period*10);
		rst_n = 1;
		#(`clk_period*10);
		key1 = 0;
		#(`clk_period*1000);		//延时20*1_000 = 20us   300x20ns = 6us
		key2 = 0;
		#1000_000;
		$stop;

	end
      
endmodule

