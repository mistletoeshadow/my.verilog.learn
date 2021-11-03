`timescale 1ns/1ps

module dds_wave (
    input [31:0] K,
    input clk,
    input rst_n,
    input [10:0] P,

    output reg F_out 
);

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        
    end
end


endmodule 