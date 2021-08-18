`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:16:26 08/18/2021 
// Design Name: 
// Module Name:    xulie_signal 
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
module xulie_signal(
    input   clk,
    input   rst_n,
    output  reg led
    );

    reg [8:0] cnt; //10us = 10_000ns/20 = 500

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt <= 0;
        else if(cnt == 9'd499)
            cnt <= 0;
        else 
            cnt <= cnt +1'b1;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            led <= 1'b0;
        else if(cnt == 0)
            led <= 1;
        else if(cnt == 49)
            led <= 0;
        else if(cnt == 49*2)
            led <= 1;
        else if(cnt == 49*4)
            led <= 0;
        else if(cnt == 49*5)
            led <= 1;
        else if(cnt == 49*6)
            led <= 0;
        else if(cnt == 49*8)
            led <= 1;
        
        
    end


endmodule
