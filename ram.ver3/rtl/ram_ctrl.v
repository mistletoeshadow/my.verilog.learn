`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NUAA
// Engineer:   rui
// 
// Create Date:    16:24:26 10/23/2021 
// Design Name: 
// Module Name:    ram_ctrl 
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
module ram_ctrl(
    input key_1,
    input rst_n,
    input clk,
    input key_2,

    output reg       w_en,
    output reg       clk_read, 
    
    output reg [7:0] addr,
    output reg [7:0] data_in
    );

    
    reg [23:0] cnt_20ms;          //板级验证使用
 //   reg [3:0] cnt_20ms;             //仿真使用
    
    reg       rd_flag;

    parameter cnt_max = 999_999_9;  //0.2s     ,板级验证使用;
//    parameter cnt_max = 9;      //0.2us,    仿真使用；
    
    //w_en    写使能信号
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            w_en <= 1'b0;
        else if (key_1)
            w_en <= 1'b1;
        else if(addr == 8'd255 || key_2 == 1'b1)
            w_en <= 1'b0;
        else 
            w_en <= w_en;
    end

    //rd_flag   
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            rd_flag <= 1'b0;
        else if (key_2)
            rd_flag <= 1'b1;
        else if(key_1)
            rd_flag <= 1'b0;
        else 
            rd_flag <= rd_flag;
    end

    //addr
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            addr <= 8'd0;
        else if (w_en  || clk_read == 1'b1)
            addr <= addr + 8'd1;
        else if(addr == 8'd255 || key_2 == 1'b1)
            addr <= 8'd0;
        else 
            addr <= addr;
    end

    //data_in
    always @(*) begin
        if(w_en == 1'b1)
            data_in = addr;
        else 
            data_in = 8'd0;
    end

    //cnt for 20ms
    //仿真时，cnt = 20ns*10 = 0.2 us
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt_20ms <= 1'b0;
        else if(rd_flag == 1'b1)
            cnt_20ms <= cnt_20ms + 24'd1;
        else if(cnt_20ms == cnt_max || key_2 == 1'b1)
            cnt_20ms <= 24'd0;
        else 
            cnt_20ms <= 24'd0;
    end

    //clk_read
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            clk_read <= 1'b0;
        else if(cnt_20ms == 24'b1)
            clk_read <= 1'b1;
        else
            clk_read <= 1'b0;
    end



endmodule
