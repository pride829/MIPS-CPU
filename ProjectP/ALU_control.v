`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:23:24 05/12/2018 
// Design Name: 
// Module Name:    ALU_control 
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
module ALU_control(
    input clk,
    input rst,
    input [5:0] funct,
    input [1:0] ALUOp,
    output reg [3:0] ALUCtrl
    );

	always @(posedge clk, posedge rst) begin
		if(rst == 1'b1) begin
			ALUCtrl = 4'b1111;
		end
		else begin
			if(ALUOp == 2'b00) begin
				ALUCtrl = 4'b0010; // lw or sw
			end
			else if(ALUOp == 2'b01) begin
				ALUCtrl = 4'b0110;
			end
			else if(ALUOp == 2'b10) begin
				case (funct)
					6'b100000: ALUCtrl = 4'b0010;
					6'b100010: ALUCtrl = 4'b0110;
					6'b100100: ALUCtrl = 4'b0000;
					6'b100101: ALUCtrl = 4'b0001;
					6'b101010: ALUCtrl = 4'b0111;
				endcase
			end
		
		end
	
	end


endmodule
