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
	reg key_1;
	reg key_2;

	// Outputs
	wire rs232_tx;
	wire state_led;
	wire tx_done;

	// Instantiate the Unit Under Test (UUT)
	ram_top uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.key_1(key_1), 
		.key_2(key_2), 
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
		key_1 = 1;
		key_2 = 1;
		#(`clk_period*10);
		rst_n = 1;
		#(`clk_period*100);
		key_1 = 0;
		#(`clk_period*3000_000);		//延时20*3_000_000 = 60ms
		//#(1000_000_000);
		key_2 = 0;
		#1000_000_000;

	end
      
endmodule

