`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:08 08/20/2021 
// Design Name: 
// Module Name:    ctrl 
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
module ctrl(
    input clk,
    input rst_n,

    output reg en,
    output [7:0] data,

    input tx_done
    );

    reg [1:0] state;

    localparam S0 = 2'd0;
    localparam S1 = 2'd1;
    localparam S2 = 2'd2;

    reg cnt_en; 

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            state <= S0;
            en <= 1'b0;
            cnt_en <= 1'b0;
        end

        else begin
            case (state)
                S0 :  
                    begin
                        en <= 1'b1;
                        state <= S1;
                    end

                S1 :
                    begin
                        if(tx_done)begin
                            en <= 1'b0;
                            cnt_en <= 1'b1;
                            state <= S2;
                        end
                        else begin
                            en <= 1'b1;
                            cnt_en <= 1'b0;
                            state <= S1;
                        end
                            
                    end
                S2 :
                    begin
                        if(dly_done)begin
                            state <= S0;
                            cnt_en <= 0;
                        end
                        else begin
                            state <= S2;
                            cnt_en <= 1'b1;
                        end
                    end  
                default : 
                            begin
                                state <= S0;
                                cnt_en <= 1'b0;
                                en <= 1'b0;
                            end
                      
            endcase


        end
    end

endmodule
