`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:13 08/22/2021 
// Design Name: 
// Module Name:    uart_tx_top 
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
module uart_tx_top(Clk,Rst_n,Rs232_Tx,key_in0,led);

	input Clk;
	input Rst_n;
	input key_in0;
	
	output Rs232_Tx;
	output led;             //显示串口工作状态
	
	wire send_en;
	wire [7:0]data_byte;
	wire key_flag0;
	wire key_state0;
	
	assign send_en = key_flag0 & !key_state0;
	
	uart_byte_tx uart_byte_tx(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.data_byte(data_byte),
		.send_en(send_en),
		.baud_set(3'd0),            //9600
		
		.Rs232_Tx(Rs232_Tx),
		.Tx_Done(),
		.uart_state(led)
	);
	
	key_filter key_filter0(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.key_in(key_in0),
		.key_flag(key_flag0),
		.key_state(key_state0)
	);
	
	issp issp(
		.probe(),
		.source(data_byte)
	);
	

endmodule