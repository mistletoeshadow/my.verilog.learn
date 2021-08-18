`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:57 08/17/2021 
// Design Name: 
// Module Name:    uart_byte_rx 
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
module uart_byte_rx(
    input clk,
    input rst_n,
    input rs232_rx,
    input [2:0] baud_set,

    output rx_done, 
    output [7:0]data_byte
    );

    reg s0_rs232_rx , s1_rs232_rx ;         //同步寄存器
    reg tmp0_rs232_rx , tmp1_rs232_rx;      //数据寄存器

    wire nedege;

//波特率设置模块
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            bps_DR <= 16'd5207;
        else begin
            case (baud_set)
                0:bps_DR <= 16'd324;           //9600bps
                1:bps_DR <= 16'd162;
                2:bps_DR <= 16'd80;
                3:bps_DR <= 16'd53;
                4:bps_DR <= 16'd26;
                default : bps_DR <= 16'd324;
                    
            endcase
        end
    end

//起始位检查模块
//同步寄存器，消除亚稳态
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        s0_rs232_rx <= 1'b0;
        s1_rs232_rx <= 1'b0;
    end
    else begin
        s0_rs232_rx <= rs232_rx;
        s1_rs232_rx <= s0_rs232_rx;
    end   
end

//数据寄存器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        tmp0_rs232_rx <= 1'b0;
        tmp1_rs232_rx <= 1'b0;
    end
    else begin
        tmp0_rs232_rx <= s1_rs232_rx;
        tmp1_rs232_rx <= tmp0_rs232_rx;
    end   
end

assign nedege = !tmp0_rs232_rx & tmp1_rs232_rx;

endmodule
