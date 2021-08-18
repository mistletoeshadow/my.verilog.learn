`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:05 08/18/2021 
// Design Name: 
// Module Name:    cnt_led_2 
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
module cnt_led_2(
    input                   clk,
    input                   rst_n,
    output  reg             led
    );

    reg [15:0] cnt;
    parameter cnt_max = 49_999;
    //计数器,50M~20ns  1ms=100_0_000/20=5_0000-1 = 49_999 16bits
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 16'd0;
        end
        else if(cnt < 16'd24_999)
            cnt <= cnt + 16'd1;
        else
            cnt <= 16'd0;

    end

    //计数器控制led翻转
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            led <= 1'b0;
        else if (cnt == 16'd24_999)
            led <= ~led;
        else 
            led <= led;
    end

endmodule