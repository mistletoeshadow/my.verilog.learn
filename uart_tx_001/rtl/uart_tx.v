`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:52:05 08/20/2021 
// Design Name: 
// Module Name:    uart_tx 
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
module uart_tx(
    input clk,
    input  rst_n,
    input send_en,
    input [7:0] data_byte,
    input [2:0] baud_set,

    output reg uart_tx,
    output reg uart_state,
    output reg tx_done 
    );

    reg [12:0] bps_cnt;
    reg [12:0] cnt;
    reg bps_clk;
    reg [3:0] send_cnt;

    reg [7:0] r_data_byte;

    localparam byte_start = 0;
    localparam byte_stop = 1;

    //波特率设置查找表，
    //bps_cnt是当系统时钟为20ns时，
    //bps_clk跳转周期为bps_cnt个sys_clk；
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            bps_cnt <= 13'd0;
        else begin
            case (baud_set)
                0 : bps_cnt <= 13'd5207;            //bps == 9600
                1 : bps_cnt <= 13'd2603;            //bps == 19200
                2 : bps_cnt <= 13'd1301;            //bps == 38400
                3 : bps_cnt <= 13'd867;             //bps == 57600
                4 : bps_cnt <= 13'd433;             //bps == 115200
                default 
                    : bps_cnt <= 13'd5207;   
            endcase
        end
    end

    //计数器
    //用于计数到bps_cnt的数值
    //以便产生bps_clk
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt <= 0;
        else if (cnt == bps_cnt)
            cnt <= 0;
        else 
            cnt <= cnt + 1'b1;
    end

    //产生bps_clk
    //好像没啥用呀！！！
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            bps_clk <= 1'b0;
        end
        else if (cnt == 13'd1)
            bps_clk <= 1'b1;
        else
            bps_clk <= 1'b0;    
        
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            r_data_byte <= 8'd0;
        else if(send_en)
            r_data_byte <= data_byte;
        else
            r_data_byte <= r_data_byte;
            
    end

    //字节计数器
    //每发送一个字节就加一
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            send_cnt <= 4'd0;
        else if(send_en)begin
            if(bps_clk)
                send_cnt <= send_cnt +1'b1;
            else if(send_cnt == 4'd11)
                send_cnt <= 4'd0;
            else
                send_cnt <= send_cnt;

        end
    end

    //发送八个字节 和 起始位
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            uart_tx <= 1'b1;
        else if(send_en)begin
            case (send_cnt)
                0 : uart_tx <= 1'b1;
                1 : uart_tx <= byte_start;
                2 : uart_tx <= r_data_byte[0];
                3 : uart_tx <= r_data_byte[1];
                4 : uart_tx <= r_data_byte[2];
                5 : uart_tx <= r_data_byte[3];
                6 : uart_tx <= r_data_byte[4];
                7 : uart_tx <= r_data_byte[5];
                8 : uart_tx <= r_data_byte[6];
                9 : uart_tx <= r_data_byte[7];
                10 : uart_tx <= byte_stop;
                default : uart_tx <= 1'b1;
                    
            endcase
        end     
    end

//tx_done
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            tx_done <= 1'b0;
        else if(send_cnt == 4'd11)
            tx_done <= 1'b1;
        else
            tx_done <= 1'b0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            uart_state <= 1'b0;
        else if(send_en)
            uart_state <= 1'b1;
        else if(tx_done)
            uart_state <= 1'b0;
        else
            uart_state <= uart_state;
endmodule
