`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:18 11/08/2021 
// Design Name: 
// Module Name:    dds_wave 
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
module dds_wave(
    input clk,
    input rst_n,
    input [31:0] k,
    input [11:0] p,
    input en,

    output [9:0] f_out

    );

    //相位累加器
    reg [31:0] cnt;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt <= 32'd0;
        else
            cnt <= cnt + k;
    end

    //寻址码 addr
    reg  [11:0] addr;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            addr <= 12'd0;
        else if (en == 1'b1) begin
            addr <= k[31:20] + p;
        end
        else
            addr <= addr;      
    end

    //wave rom
    

endmodule
