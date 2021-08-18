`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:12:13 08/06/2021 
// Design Name: 
// Module Name:    counter 
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
module counter(
    sys_clk_50M,
    rst_n,
    led
    );

    input  sys_clk_50M;
    input  rst_n;

    output reg [3:0] led;    `   //led输出

    reg [24:0] cnt;         //定义计数器寄存器

//计数器计数进程
    always @(posedge sys_clk_50M or negedge rst_n) begin
        if (rst_n == 1'b0) begin
            cnt <= 25'd0;            
        end
        else if (cnt == 25'd24_999_999) begin
            cnt <= 25'd0;
        end
        else
            cnt <= cnt + 1'b1;

//LED输出控制进程            
    always @(posedge sys_clk_50M or negedge rst_n) begin
        if (rst_n == 1'b0) 
            led <= 4'b1;
        
        else if (cnt == 25'd24_999_999) 
            led <= ~led;
        
        else
            led <= led;
    end
end    


endmodule
