module adjust_a(

	input	wire			clk,
	input	wire			rst_n,
	input	wire	[1:0]	wave_a,
	input	wire	[7:0]	wave,
	
	output	reg		[9:0]	wave_data
);
	always @(posedge clk,negedge rst_n)
		if(!rst_n)
			wave_data<=0;
		else  
		    wave_data<=wave*(wave_a+3'b001);
endmodule 