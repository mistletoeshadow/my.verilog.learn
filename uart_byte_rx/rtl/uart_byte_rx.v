`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: rui
// 
// Create Date:    15:26:57 10/12/2021 
// Design Name: 
// Module Name:    uart_byte_rx 
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
module uart_byte_rx(
    input clk,
    input rst_n,
    input rs232_rx,
    input [2:0] baud_set,

    output reg rx_done, 
    output reg [7:0]data_byte
    );

    reg s0_rs232_rx , s1_rs232_rx ;         //同步寄存器,消除亚稳态
    reg tmp0_rs232_rx , tmp1_rs232_rx;      //数据寄存器

    reg [15:0] bps_DR;                      //分频计数器最大值
    reg [15:0] div_cnt;                     //分频计数器
    reg [7:0] bps_cnt;

    reg uart_state;
    reg bps_clk;

    reg [2:0] r_data_byte [7:0];   //总共八位数据，每一位数据需要存储3位
    reg [7:0] tmp_data_byte;
    reg [2:0] START_BIT,STOP_BIT;

    wire nedege;

//波特率设置模块
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            bps_DR <= 16'd5207;
        else begin
            case (baud_set)
                0:bps_DR <= 16'd324;            //9600bps
                1:bps_DR <= 16'd162;            //19200
                2:bps_DR <= 16'd80;             //38400
                3:bps_DR <= 16'd53;             //57600
                4:bps_DR <= 16'd26;             //115200
                default : bps_DR <= 16'd324;
                    
            endcase
        end
    end

//起始位检查模块
//同步寄存器，消除亚稳态
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        s0_rs232_rx <= 1'b0;
        s1_rs232_rx <= 1'b0;
    end
    else begin
        s0_rs232_rx <= rs232_rx;
        s1_rs232_rx <= s0_rs232_rx;
    end   
end

//数据寄存器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        tmp0_rs232_rx <= 1'b0;
        tmp1_rs232_rx <= 1'b0;
    end
    else begin
        tmp0_rs232_rx <= s1_rs232_rx;
        tmp1_rs232_rx <= tmp0_rs232_rx;
    end   
end

//counter
always@(posedge clk or negedge rst_n)
    if(!rst_n)
	    div_cnt <= 16'd0;
    else if(uart_state)begin
	    if(div_cnt == bps_DR)
		div_cnt <= 16'd0;
	    else
		div_cnt <= div_cnt + 1'b1;
    end
    else
	    div_cnt <= 16'd0;

	// bps_clk gen
always@(posedge clk or negedge rst_n)
	if(!rst_n)
		bps_clk <= 1'b0;
	else if(div_cnt == 16'd1)
		bps_clk <= 1'b1;
	else
		bps_clk <= 1'b0;

//bps counter
/*

*/
always@(posedge clk or negedge rst_n)
	if(!rst_n)	
		bps_cnt <= 8'd0;
	else if(rx_done | (bps_cnt == 8'd12 && (START_BIT > 2)))    //当接收停止或起始位接收错误时
		bps_cnt <= 8'd0;
	else if(bps_clk)
		bps_cnt <= bps_cnt + 1'b1;
	else
		bps_cnt <= bps_cnt; 

always@(posedge clk or negedge rst_n)
	if(!rst_n)
		rx_done <= 1'b0;
	else if(bps_cnt == 8'd159)
		rx_done <= 1'b1;
	else
		rx_done <= 1'b0; 



always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
        START_BIT       <= 3'd0;
        r_data_byte [0] <= 3'd0;    
        r_data_byte [1] <= 3'd0;
        r_data_byte [2] <= 3'd0;
        r_data_byte [3] <= 3'd0;
        r_data_byte [4] <= 3'd0;
        r_data_byte [5] <= 3'd0;
        r_data_byte [6] <= 3'd0;
        r_data_byte [7] <= 3'd0;
        STOP_BIT        <= 3'd0;
    end
		
	else begin
		case(bps_cnt)
            0 : begin
                START_BIT       <= 3'd0;
                r_data_byte [0] <= 3'd0;    
                r_data_byte [1] <= 3'd0;
                r_data_byte [2] <= 3'd0;
                r_data_byte [3] <= 3'd0;
                r_data_byte [4] <= 3'd0;
                r_data_byte [5] <= 3'd0;
                r_data_byte [6] <= 3'd0;
                r_data_byte [7] <= 3'd0;
                STOP_BIT        <= 3'd0;  
            end
			6,7,8,9,10,11 : START_BIT <= START_BIT + s1_rs232_rx;
			22,23,24,25,26,27: r_data_byte[0] <= r_data_byte[0] + s1_rs232_rx;
			38,39,40,41,42,43: r_data_byte[1] <= r_data_byte[1] + s1_rs232_rx;
			54,55,56,57,58,59: r_data_byte[2] <= r_data_byte[2] + s1_rs232_rx;
			70,71,72,73,74,75: r_data_byte[3] <= r_data_byte[3] + s1_rs232_rx;
			86,87,88,89,90,91: r_data_byte[4] <= r_data_byte[4] + s1_rs232_rx;
			102,103,104,105,106,107: r_data_byte[5] <= r_data_byte[5] + s1_rs232_rx;
			118,119,120,121,122,123: r_data_byte[6] <= r_data_byte[6] + s1_rs232_rx;
			134,135,136,137,138,139: r_data_byte[7] <= r_data_byte[7] + s1_rs232_rx;
			150,151,152,153,154,155: STOP_BIT <= STOP_BIT + s1_rs232_rx;

			default;
		endcase
	end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
       tmp_data_byte <= 8'd0; 
    end
    else if(bps_cnt == 8'd159)begin
        //tmp_data_byte[0] = (r_data_byte[2]) ? 1'b1:1'b0;
        tmp_data_byte[0] <= r_data_byte[0][2];
        tmp_data_byte[1] <= r_data_byte[1][2];        
        tmp_data_byte[2] <= r_data_byte[2][2];
        tmp_data_byte[3] <= r_data_byte[3][2];
        tmp_data_byte[4] <= r_data_byte[4][2];
        tmp_data_byte[5] <= r_data_byte[5][2];
        tmp_data_byte[6] <= r_data_byte[6][2];
        tmp_data_byte[7] <= r_data_byte[7][2];
    end
end

//设置一个tmp_data_byte对接收的数据进行缓存
always@(posedge clk or negedge rst_n)
	if(!rst_n)
		data_byte <= 8'd0;
	else if(bps_cnt == 8'd159)
		data_byte <= tmp_data_byte;
	else
		data_byte <= data_byte;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        uart_state <= 1'b0;
    else if(nedege)
        uart_state <= 1'b1;
    else if(rx_done || (bps_cnt == 8'd12 && (START_BIT > 2)))       //为了表示清晰的优先级
        uart_state <= 1'b0;
    else
        uart_state <= uart_state;
end

assign nedege = !tmp0_rs232_rx & tmp1_rs232_rx;   //下降沿检测

endmodule
