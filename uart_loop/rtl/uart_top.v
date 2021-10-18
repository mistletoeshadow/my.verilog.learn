`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:54 10/16/2021 
// Design Name: 
// Module Name:    uart_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
/*
设计逻辑（仅接收一个字节）：
    当接收机接收到一个字节时，发送模块
*/
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module uart_top(
    input  Clk,
    input  Rst_n,
    input  Rs232_Rx,
    
    output Led,
    output Rs232_Tx
    );

    wire send_en;
    wire [7:0] data_byte;
    
   	uart_byte_tx uart_byte_tx_u(
    	.Clk(Clk),
    	.Rst_n(Rst_n),
    	.data_byte(data_byte),
    	.send_en(send_en),
    	.baud_set(3'd0),
    
    	.Rs232_Tx(Rs232_Tx),
    	.Tx_Done(tx_done),
    	.uart_state(Led)
);

    uart_byte_rx uart_byte_rx_u(
        .Clk(Clk),
        .Rst_n(Rst_n),
        .baud_set(3'd0),
        .Rs232_Rx(Rs232_Rx),
        .data_byte(data_byte),
        .Rx_Done(send_en)
    );    



endmodule
