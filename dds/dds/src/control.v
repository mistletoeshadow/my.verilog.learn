module control (
	
	input	wire			clk,
	input	wire			rst_n,
	input	wire			wave_flag,
	input	wire			key_freq_add_flag,
	input	wire			key_freq_sub_flag,
	input	wire			key_a_flag,
	
	output	reg		[1:0]	wave_sel,
	output	reg		[19:0]	wave_freq,
	output	reg		[1:0]	wave_a
	);

	parameter	Base_freq = 500;
	
	reg		[19:0]		sin_freq;
	reg		[19:0]		square_freq;
	reg		[19:0]		tri_freq;
	reg		[19:0]		saw_freq;
	
	reg		[1:0]		sin_a;
	reg		[1:0]		square_a;
	reg		[1:0]		tri_a;
	reg		[1:0]		saw_a;
	
	always @(posedge clk or negedge rst_n)
	begin
		if(rst_n==0) wave_sel<=0;
		else if(wave_flag==1) wave_sel<=wave_sel+1'b1;
			else wave_sel<=wave_sel; 
	
	end
//-------------------------------------------------------	
	always @( posedge clk or negedge rst_n ) begin
		if ( rst_n == 0 ) 
			sin_freq <= 0;
		else 
			if ( wave_sel==2'b00 )
				if ( key_freq_add_flag==1 ) 
					sin_freq <= sin_freq + Base_freq[19:0];
				else	if ( key_freq_sub_flag==1 )
					sin_freq <= sin_freq - Base_freq[19:0];
						else	sin_freq <= sin_freq;
	end
	
	always @( posedge clk or negedge rst_n ) begin
		if ( rst_n==0 )	
			sin_a <= 0;
		else 
			if ( wave_sel==2'b00 )	
				if ( key_a_flag==1 ) 
					sin_a <= sin_a+1'b1;
	end
//----------------------------------------------------	
	always @( posedge clk or negedge rst_n ) begin
		if ( rst_n == 0 ) 
			square_freq <= 0;
		else 
			if ( wave_sel==2'b01 )
				if ( key_freq_add_flag==1 ) 
					square_freq <= square_freq + Base_freq[19:0];
				else	if ( key_freq_sub_flag==1 )
					square_freq <= square_freq - Base_freq[19:0];
						else	square_freq <= square_freq;
	end
	
	always @( posedge clk or negedge rst_n ) begin
		if ( rst_n==0 )	
			square_a <= 0;
		else 
			if ( wave_sel==2'b01 )	
				if ( key_a_flag==1 ) 
					square_a <= square_a+1;
	end
//----------------------------------------------------	
	always @( posedge clk or negedge rst_n ) begin
		if ( rst_n == 0 ) 
			tri_freq <= 0;
		else 
			if ( wave_sel==2'b10 )
				if ( key_freq_add_flag==1 ) 
					tri_freq <= tri_freq + Base_freq[19:0];
				else	if ( key_freq_sub_flag==1 )
					tri_freq <= tri_freq - Base_freq[19:0];
						else	tri_freq <= tri_freq;
	end
	
	always @( posedge clk or negedge rst_n ) begin
		if ( rst_n==0 )	
			tri_a <= 0;
		else 
			if ( wave_sel==2'b10 )	
				if ( key_a_flag==1 ) 
					tri_a <= tri_a+1;
	end
//----------------------------------------------------		
	always @( posedge clk or negedge rst_n ) begin
		if ( rst_n == 0 ) 
			saw_freq <= 0;
		else 
			if ( wave_sel==2'b11 )
				if ( key_freq_add_flag==1 ) 
					saw_freq <= saw_freq + Base_freq[19:0];
				else	if ( key_freq_sub_flag==1 )
					saw_freq <= saw_freq - Base_freq[19:0];
						else	saw_freq <= saw_freq;
	end
	
	always @( posedge clk or negedge rst_n ) begin
		if ( rst_n==0 )	
			saw_a <= 0;
		else 
			if ( wave_sel==2'b11 )	
				if ( key_a_flag==1 ) 
					saw_a <= saw_a+1;
	end
	
	always @ ( posedge clk or negedge rst_n ) begin
		if ( rst_n==0 )
			wave_freq <= 0;
		else 
			case ( wave_sel )
				2'b00	:	wave_freq <= sin_freq;
				2'b01	:	wave_freq <= square_freq;	
				2'b10	:	wave_freq <= tri_freq;
				2'b11	:	wave_freq <= saw_freq;
				default	:	wave_freq <= 0;
			endcase
	end

	always @ ( posedge clk or negedge rst_n ) begin
		if ( rst_n==0 )
				wave_a <= 0;
			else 
				case ( wave_sel )
					2'b00	:	wave_a <= sin_a;
					2'b01	:	wave_a <= square_a;	
					2'b10	:	wave_a <= tri_a;
					2'b11	:	wave_a <= saw_a;
					default	:	wave_a <= 0;
				endcase
	end

	
endmodule 