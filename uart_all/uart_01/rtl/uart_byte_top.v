/***************************************************
*	Module Name		:	uart_rx_top		   
*	Engineer		   :	小梅哥
*	Target Device	:	EP4CE10F17C8
*	Tool versions	:	Quartus II 13.0
*	Create Date		:	2017-3-31
*	Revision		   :	v1.0
*	Description		:  串口接收顶层设计
**************************************************/
`timescale 1ns / 1ps
module uart_rx_top(
			
			led1,
			led2,
			led3,
			led4,
			
			
			Clk,     //模块时钟  
			Rst_n,   //模块复位
			Rs232_Rx, //RS232数据输入
			Rs232_Tx,  //Rs232输出信号
//			key_in0,   //按键控制输入
			led        //数据发送状态			
			
		);

	input Clk;
	input Rst_n;
	input Rs232_Rx;
	
	output reg led1;
	output reg led2;
	output reg led3;
	output reg led4;

//	input key_in0;
	
	output Rs232_Tx;
	output led;
		

	wire send_en;
	wire [7:0]data_byte;
//	wire key_flag0;
//	wire key_state0;
	
	reg     [7:0]data_byte_tx;
	reg     [7:0]data_rx_r;
	wire    [7:0]data_rx;
	wire    Rx_Done;
	
	
	assign send_en = RXDN;

	reg [4:0] cnt;
	reg RXDN;

		
    always@(posedge Clk or negedge Rst_n)
	if(!Rst_n)
		begin
			cnt <= 5'd0;
			RXDN <= 1'b0;
		end
	else if(Rx_Done)
		cnt <= cnt + 1;
	else if(cnt == 5'd1)
	    begin
	    	RXDN <= 1;
	    	cnt <= 0;
	    end
	else 
		RXDN <= 1'b0;
	
	
	
	///
   //assign send_en = key_flag0 & !key_state0;	


	uart_byte_rx uart_byte_rx(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.baud_set(3'd0),
		.Rs232_Rx(Rs232_Rx),

		.data_byte(data_rx),
		.Rx_Done(Rx_Done)
	);
		uart_byte_tx uart_byte_tx(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.data_byte_tx(data_byte_tx),
		.send_en(send_en),
		.baud_set_tx(3'd0),

		.Rs232_Tx(Rs232_Tx),
		.Tx_Done(Tx_Done),
		.uart_state(led)
	);
	
//	key_filter key_filter0(
//		.Clk(Clk),
//		.Rst_n(Rst_n),
//		.key_in(key_in0),
//		.key_flag(key_flag0),
//		.key_state(key_state0)
//	);
//	ISSP issp(
//		.probe(data_rx_r),
//		.source()
//		
//	);
		

		
		
	always@(posedge Clk or negedge Rst_n)
	if(!Rst_n)
		begin
		data_rx_r <= 8'D0;
					led1 <= 1'b0;
					led2 <= 1'b0;
					led3 <= 1'b0;
					led4 <= 1'b0;
		end
//开始
	else //if(Rx_Done)
		begin
			data_rx_r <= data_rx;
						//data_rx_r <= data_rx;
			if(data_rx_r == 8'h10)
				begin
					led1 <= 1'b0;
					led2 <= 1'b1;
					led3 <= 1'b0;
					led4 <= 1'b1;
					data_byte_tx <= 8'hFF;

				end
	        else if(data_rx_r == 8'h53)
				begin
					led1 <= 1'b1;
					led2 <= 1'b1;
					led3 <= 1'b0;
					led4 <= 1'b1;
					data_byte_tx <= 8'hB4;

				end
	            else if(data_rx_r == 8'h54)
				    begin
					    led1 <= 1'b0;
					    led2 <= 1'b1;
					    led3 <= 1'b1;
					    led4 <= 1'b1;
					    data_byte_tx <= 8'h00;

				    end
	            else if(data_rx_r == 8'h11)
				    begin
				    	led1 <= 1'b0;
				    	led2 <= 1'b1;
				    	led3 <= 1'b0;
				    	led4 <= 1'b0;
				    	data_byte_tx <= 8'hF0;
    
				    end
	            else
		        	begin
                    
		        		led1 <= 1'b1;
		        		led2 <= 1'b1;
		        		led3 <= 1'b1;
		        		led4 <= 1'b1;
		        		data_byte_tx <= 8'h66;
		        	end
		end
	
//结尾
		
		
//	always@(posedge Clk or negedge Rst_n)
//	if(!Rst_n)
//		data_rx_r <= 8'd0;
//	else if(Rx_Done)
//		data_rx_r <= data_rx;
//	else
//		data_rx_r <= data_rx_r;
//		
endmodule

