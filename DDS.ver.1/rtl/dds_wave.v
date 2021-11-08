`timescale 1ns/1ps
/*
设计定义：两个用户按键，按不同的键，频率控制字K不同；
设计分析：
    K [31:0]    N = 32; 
    ROM地址位宽为12位，有4096个存储单元，那么相位控制字P也为12位；每一个存储单位的数据位宽为11位，2^11 = 2048；
    那么此时，将一个完整周期的正弦波信号等间隔采样2^12 = 1024 次；用 0~2047来表示这个正弦波电压幅度值；\
    time :                      0000_0000_0000_0000_0000_0000_0000_0000
    K_1 :                                                1111_1111_1111  //4095
    K_2 :                                                1111_1111_1110  //4094
    K_3 :                                                1111_1111_1101  //4093
    K_4 :                                                0000_0000_0001  //1

    当K_1时，每一个clk，r_time翻转一次；f_out=f_clk=K_1×f_clk/2^N      ；又由于奈奎斯特采样定理的限制，f_out <= f_clk/2 所以K_1不可取
    当K_2 时，每两个clk，r_time翻转一次；
    当K_3时，每三个clk，r_time翻转一次；
    当K=1时，每2^12个clk, r_time 翻转一次；f_out=f_clk/2^N 


*/
module dds_wave (
    input [31:0] K,
    input clk,
    input rst_n,
    //input [10:0] P,

    output [9:0] F_out 
);

    reg [31:0] cnt;
    wire [11:0] addr;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt <= 32'd0;
        else
            cnt <= cnt + K;
    end

    assign addr = cnt[31:20]; 
    


//波形数据表ROM
//M_dds wave_rom (
//.clka(clk), // input clka
//.addra(addr), // input [11 : 0] addra
//
//.douta(F_out) // output [9 : 0] douta ；数据深度为10位
//
ROM_dds your_instance_name (
  .clka(clka), // input clka
  .addra(addra), // input [10 : 0] addra
  .douta(douta) // output [9 : 0] douta
);

endmodule 