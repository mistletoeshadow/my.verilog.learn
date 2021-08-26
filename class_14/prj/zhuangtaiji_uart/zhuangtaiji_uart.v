`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:12:01 08/20/2021 
// Design Name: 
// Module Name:    zhuangtaiji_uart 
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
module zhuangtaiji_uart(
    input clk,
    input rst_n,
    output reg tx
    );

    wire en;
    wire [7:0] data;
    wire tx_done;
    
    data_send u_data_send(
       .clk(clk),
       .rst_n(rst_n),
       .en(en),
       .data(data),
       .tx(tx),
       .tx_done(tx_done)
    );

    ctrl u_ctrl(
    .clk(clk),
    .rst_n(rst_n),

    .en(en),
    .data(data),
    .tx_done(tx_done)
    );


endmodule
