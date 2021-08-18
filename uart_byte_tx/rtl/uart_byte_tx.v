`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:28 08/09/2021 
// Design Name: 
// Module Name:    uart_byte_tx 
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
module uart_byte_tx(
    clk,
    rst_n,
    data_byte,
    send_en,
    baud_set,

    rs232_tx,
    tx_done,
    uart_state
    );

    input clk;
    input rst_n;
    input  [7:0]  data_byte;
    input send_en;
    input [2:0]baud_set;

    output reg rs232_tx;
    output reg tx_done;
    output reg uart_state;

    reg bps_clk;

    reg [15:0] div_cnt;//分频计数器

    reg [15:0] bps_DR; //分频计数最大值

    reg [3:0] bps_cnt;//波特率计数器

    reg [7:0] r_data_byte;

    localparam start_bit = 1'b0;
    localparam stop_bit  = 1'b1;

    always @(posedge clk or negedge rst_n) begin
        if  (!rst_n)
            uart_state <= 1'b0;
        else if (send_en)
            uart_state <= 1'b1;
        else if (bps_cnt == 4'd11)
            uart_state <= 1'b0;
        else
            uart_state <= uart_state;            
    end    

//缓存寄存器，防止发送数据出错
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            r_data_byte <= 8'd0;
        else if (send_en)
            r_data_byte <= data_byte;
        else
            r_data_byte <= r_data_byte;
            
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            bps_DR <= 16'd5207;
        else begin
            case (baud_set)
                0:bps_DR <= 16'd5207;           //9600bps
                1:bps_DR <= 16'd2603;
                2:bps_DR <= 16'd1301;
                3:bps_DR <= 16'd867;
                4:bps_DR <= 16'd433;
                default : bps_DR <= 16'd5207;
                    
            endcase
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            div_cnt <= 16'd0;
        else if (uart_state)begin
            if (div_cnt == bps_DR)
                div_cnt <= 16'd0;
            else
                div_cnt <= div_cnt + 1'b1;
        end
        else 
            div_cnt <= 16'd0;
    end

//bps_clk_gen
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            bps_clk <= 1'b0;
        else if(div_cnt == 16'd1)
            bps_clk <= 1'b1;
        else
            bps_clk <= 1'b0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            bps_cnt <= 4'd0;
        else if (bps_cnt == 4'd11)
            bps_cnt <= 4'd0;
        else if (bps_clk)
            bps_cnt <= bps_cnt + 1'b1;
        else
            bps_cnt <= bps_cnt;    

    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            tx_done <= 1'b0;
        else if (bps_cnt == 4'd11)
            tx_done <= 1'b1;
        else
            tx_done <= 1'b0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            rs232_tx <= 1'b1;
        else begin
            case (bps_cnt)
                0 : rs232_tx <= 1'b1;
                1 : rs232_tx <= start_bit;
                2 : rs232_tx <= r_data_byte[0];
                3 : rs232_tx <= r_data_byte[1];
                4 : rs232_tx <= r_data_byte[2];
                5 : rs232_tx <= r_data_byte[3];
                6 : rs232_tx <= r_data_byte[4];
                7 : rs232_tx <= r_data_byte[5];
                8 : rs232_tx <= r_data_byte[6];
                9 : rs232_tx <= r_data_byte[7];
                10: rs232_tx <= stop_bit;
                default : rs232_tx <= 1'b1;

            endcase
        end
    end


endmodule

