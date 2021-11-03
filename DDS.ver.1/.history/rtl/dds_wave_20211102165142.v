`timescale 1ns/1ps

module dds_wave (
    input [31:0] K,
    input clk,
    input rst_n,
    input [10:0] P,

    output reg F_out 
);

    reg [31:0] r_K;
    reg [10:0] r_P;


//两个累加寄存器
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        r_K <= 0;
        r_P <= 0;
    end
    else begin
        r_K <= K;
        r_P <= P;
    end   
end

//相位累加器
always @(posedge clk or negedge rst_n) begin
    if(k2 <= r_K + k2;
end

endmodule 