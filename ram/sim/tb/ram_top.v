`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: rui
// 
// Create Date:    17:20:18 10/23/2021 
// Design Name: 
// Module Name:    ram_top 
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
module ram_top(
    input clk,
    input rst_n,
    input key_1,
    input key_2,

    output rs232_tx,
    output state_led,
    output tx_done
    );

    wire w_en;
    wire [7:0] ram_addr;
    wire [7:0] ram_in;
    wire [7:0] ram_out;

    wire key_flag1, key_flag2, key_state1, key_state2;
    wire key1, key2;
    assign key1 = key_flag1 && !key_state1; 
    assign key2 = key_flag2 && !key_state2;  

    ram256x8 ram256x8_u (
        .clka(clk), // input clka
        .wea(w_en), // input [0 : 0] wea
        .addra(ram_addr), // input [7 : 0] addra
        .dina(ram_in), // input [7 : 0] dina
        .douta(ram_out) // output [7 : 0] douta
);

    key_filter key_u1(
        .clk(clk),
        .rst_n(rst_n),
        .key_in(key_1),
        .key_flag(key_flag1),
        .key_state(key_state1)
        );

    key_filter key_u2(
        .clk(clk),
        .rst_n(rst_n),
        .key_in(key_2),
        .key_flag(key_flag2),
        .key_state(key_state2)
        );

    ram_ctrl ram_ctrl_u(
    .key_1(key1),
    .rst_n(rst_n),
    .clk(clk),
    .key_2(key2),

    .w_en(w_en),
    .addr(ram_addr),
    .data_in(ram_in)
    );

    uart_byte_tx uart_byte_tx_u(
	.clk(clk),
	.rst_n(rst_n),
	.data_byte(ram_out),
	.send_en(key_2),
	.baud_set(3'd0),

	.tx(rs232_tx),
	.tx_done(tx_done),
	.uart_state(state_led)
);

    


endmodule
