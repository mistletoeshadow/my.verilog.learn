`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:14:47 10/15/2021
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

	initial clk =1;
	always #10 clk = ~ clk;          //20ns一个周期，产生50MHz时钟源

	initial begin
		// Initialize Inputs
		
		rst_n = 0;
		data_byte = 0;
		send_en = 0;
		baud_set = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst_n = 1;
		baud_set = 1;
		send_en = 1;
		data_byte = 8'b0001_1101;
		baud_set = 0;
		#2500_000;			//2.5ms
		data_byte = 8'b0110_1001;
		#2500_000;
		$stop;

        
		// Add stimulus here

	end
      
endmodule

