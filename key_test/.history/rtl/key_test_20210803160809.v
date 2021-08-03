`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:     NUAA
// Engineer:    mistletoe
// 
// Create Date:    15:58:26 08/03/2021 
// Design Name: 
// Module Name:    key_test 
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
module key_test(  
    input  sys_clk,
    input  [3:0]    key,

    output [3:0]    led  
    );

//reg define
    reg [3:0] led_a;
    reg [3:0] led_b;

//非门与D触发器
always @(posedge sys_clk) begin
    led_a <= ~key;  
end    

//D触发器
always @(posedge sys_clk) begin
    led_b <= led_a;
end

assign led = led_b;

endmodule
