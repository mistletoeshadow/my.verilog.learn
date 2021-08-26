`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:10:29 08/22/2021
// Design Name:   uart_tx
// Module Name:   E:/FPGA/my.verilog.learn/uart_tx_001/sim/tb/uart_tx_001_tb.v
// Project Name:  uart_tx
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_tx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_tx_001_tb;

	// Inputs
	reg clk;
	reg rst_n;
	reg send_en;
	reg [7:0] data_byte;
	reg [2:0] baud_set;

	// Outputs
	wire uart_tx;
	wire tx_done;

	// Instantiate the Unit Under Test (UUT)
	uart_tx uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.send_en(send_en), 
		.data_byte(data_byte), 
		.baud_set(baud_set), 
		.uart_tx(uart_tx), 
		.tx_done(tx_done)
	);

	initial clk =1;
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs

		rst_n = 0;
		send_en = 0;
		data_byte = 0;
		baud_set = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst_n = 1;
		send_en = 1;
		data_byte = 8'b1001_1100;
		baud_set = 0;
		#2500_000;
		data_byte = 8'b1010_1001;
		#2500_000;
		$stop;
        
		// Add stimulus here

	end
      
endmodule

