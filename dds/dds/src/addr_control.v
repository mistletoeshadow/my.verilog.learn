module addr_control(

	input	wire			clk,
	input	wire			rst_n,
	input	wire	[1:0]	wave_sel,
	input	wire	[19:0]	wave_freq,		
	
	output	wire	[9:0]	rom_addr
	
);

	parameter P = 0;
	
	localparam PWORD = 256 * P / 360;
	
	reg			[31:0]		addr;
	wire		[51:0]		FWORD;
	
	mydiv	mydiv_inst (
			.clock ( clk ),
			.denom ( 26'd50_000_000 ),
			.numer ( {wave_freq, 32'b0}),
			.quotient ( FWORD ),
			.remain ()
			);
	
	assign	rom_addr = {wave_sel, addr[31:24]} + PWORD[7:0];
	
	always @ (posedge clk, negedge rst_n)	begin
		if(rst_n == 0)
			addr <= 0;
		else
			addr <= addr + FWORD[31:0];
	end 
	
endmodule 