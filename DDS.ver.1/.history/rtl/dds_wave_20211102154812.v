`timescale 1ns/1ps

module dds_wave (
    input clk,              //输入频率
    input rst_n,
    input [31:0] f_word,    //频率字K，频率字越大，N = 32
    input [10:0] p_word,    //相位字

    output [9:0] f_out     //输出频率
    
);

    reg [31:0] f_cnt;
    reg [31:0] r_f_word;
    reg [10:0] r_p_word;

    wire [10:0] addr;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        f_cnt <= 32'd0;
    else 
        f_cnt <= f_word;
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        r_f_word <= 32'd0;
    else
        r_f_word <= r_f_word + f_cnt;
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        r_p_word <= 11'd0;
    else
        r_p_word <= p_word;
end

assign addr = r_f_word[31:21] + r_p_word;           //addr 是相位码，这一步为相位调制

ROM_dds wave_rom (
  .clka(clk), // input clka
  .addra(addr), // input [10 : 0] addra
  .douta(f_out) // output [9 : 0] douta
);







endmodule //dds_wave