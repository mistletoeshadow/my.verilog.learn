`timescale 1ns/1ps

module dds_wave (
    input [31:0] K,
    input clk,
    input rst_n,
    input [10:0] P,

    output [9:0] F_out 
);

    reg [31:0] r_K;
    reg [10:0] r_P;

    reg [31:0] f_cnt;

    wire [10:0] addr;   //相位码，同时作为ROM的寻址码


//两个累加寄存器
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        r_K <= 32'd0;
        r_P <= 11'd0;
    end
    else begin
        r_K <= K;
        r_P <= P;
    end   
end

//相位累加器
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        f_cnt <= 0;
    else
    f_cnt <= f_cnt + r_K;
end

//产生相位码
assign addr = f_cnt[31:21] + r_P;

//波形数据表ROM
ROM_dds wave_rom (
  .clka(clk), // input clka
  .addra(addr), // input [10 : 0] addra

  .douta(F_out) // output [9 : 0] douta ；数据深度为10位
);

alw

endmodule 