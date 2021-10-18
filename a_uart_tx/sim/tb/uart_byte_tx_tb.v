`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:51:38 10/16/2021
// Design Name:   uart_byte_tx
// Module Name:   E:/FPGA/my.verilog.learn/a_uart_tx/sim/tb/uart_byte_tx_tb.v
// Project Name:  uart_byte_tx
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_byte_tx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_byte_tx_tb;

	// Inputs
	reg clk;
	reg rst_n;
	reg [7:0] data_byte;
	reg send_en;
	reg [2:0] baud_set;

	// Outputs
	wire tx;
	wire tx_done;
	wire uart_state;

	// Instantiate the Unit Under Test (UUT)
	uart_byte_tx uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.data_byte(data_byte), 
		.send_en(send_en), 
		.baud_set(baud_set), 
		.tx(tx), 
		.tx_done(tx_done), 
		.uart_state(uart_state)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		data_byte = 0;
		send_en = 0;
		baud_set = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

