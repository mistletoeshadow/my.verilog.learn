`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:01:53 08/20/2021 
// Design Name: 
// Module Name:    data_send 
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
module data_send(
    input   clk,
    input   rst_n,
    input   en,
    input   [7:0] data,
    output  reg tx,
    output  reg tx_done
    );

    reg [17:0] cnt; //10us = 10_000ns/20 = 500

    parameter data_stop = 1'b0;
    parameter data_start = 1'b1;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt <= 0;
        else if(en) begin
            if (cnt == 18'd250_399)
                cnt <= 0;
            else
                cnt <= cnt +1'b1;
        end
        else 
            cnt <= 1'b0;

    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            tx <= 1'b0;
        else if (en) begin
            case (cnt)
                49 : tx <= data_start;
                100: tx <= data[0];
                149: tx <= data[1];
                199: tx <= data[2];
                249: tx <= data[3];
                299: tx <= data[4];
                349: tx <= data[5];
                399: tx <= data[6];
                449: tx <= data[7];
                499: tx <= data_stop;
                default:tx <= tx;
                    
            endcase
        end
        else 
            tx <= tx;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            tx_done <= 0;
        else if (en) begin
            if(cnt < 500)
                tx_done <= 1'b0;
            else if(cnt>500 && cnt < 550)
                tx_done <= 1'b1;
            else 
                tx_done <= 1'b0;
        end
        else
            tx_done <= 1'b0;

    end

endmodule