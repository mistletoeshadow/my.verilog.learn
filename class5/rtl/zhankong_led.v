`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:52 08/18/2021 
// Design Name: 
// Module Name:    zhankong_led 
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
module zhankong_led(
    input        clk,
    input        rst_n,

    output  reg  led
    );

    reg [16:0] cnt;


    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 17'd0;
        end
        else if(cnt == 89_999)
            cnt <= 17'd0;
        else
            cnt <= cnt + 1'b1;
    end  

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            led <= 1'b0;
        end
        else if (cnt < 17'd49_999)
            led <= 1'b1;
        else if (cnt < 17'd89_999 && cnt > 17'd49_999)
            led <= 1'b0;
        else
            led <= led;
            
    end

endmodule
