`timescale 1ns/1ns
`define clk_period 20
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:44:00 08/10/2021
// Design Name:   uart_byte_tx
// Module Name:   E:/FPGA/my.verilog.learn/uart_byte_tx/sim/tb/uart_byte_tx_tb.v
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
	wire rs232_tx;
	wire tx_done;
	wire uart_state;

	// Instantiate the Unit Under Test (UUT)
	uart_byte_tx uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.data_byte(data_byte), 
		.send_en(send_en), 
		.baud_set(baud_set), 
		.rs232_tx(rs232_tx), 
		.tx_done(tx_done), 
		.uart_state(uart_state)
	);
	
	initial clk = 1;
	always #( `clk_period/2)clk = ~clk;
	
	initial begin

		rst_n = 1'b0;
		data_byte = 8'd0;
		send_en = 1'd0;
		baud_set = 3'd4;		//115200

		#(`clk_period*20 + 1)
		rst_n = 1'b1;
		#(`clk_period*50);
		
		data_byte = 8'haa;
		send_en = 1'd1;
		#`clk_period;
		send_en = 1'd0;

		@(posedge tx_done)

		#(`clk_period*5000);
		data_byte = 8'h55;
		send_en = 1'd1;
		#`clk_period;
		send_en = 1'd0;

		@(posedge tx_done)

		#(`clk_period*5000);
		$stop;



	end
      
endmodule

