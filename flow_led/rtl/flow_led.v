`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         NUAA
// Engineer:        MISTLETOE
// 
// Create Date:    10:58:23 08/02/2021 
// Design Name: 
// Module Name:    flow_led 
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
module flow_led(
    input sys_clk,
    input rst_n,

    output reg [3:0] led
    );

    reg [27:0] counter;

//计数器模块，每计时1秒，led流水
always @(posedge sys_clk or negedge rst_n) begin
    if (!rst_n) 
        counter <= 28'd0;
    else if (counter < 28'd5000_0000)
        counter <= counter + 1'b1;
    else
        counter <= 28'd0;        
end

//led_control
always @(posedge sys_clk or negedge rst_n) begin
    if (!rst_n) begin
        led <= 4'b0001;
    end
    else if (counter == 28'd5000_0000) begin
        led[3:0] <= {led[2:0],led[3]};
    end
    else
        led <= led;
end

endmodule
