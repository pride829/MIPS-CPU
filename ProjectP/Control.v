`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:25 05/12/2018 
// Design Name: 
// Module Name:    Control 
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
module Control(
    input [5:0] opCode,
    output RegDst,
    output ALUSrc,
    output MemtoReg,
    output RegWrite,
    output MemRead,
    output MemWrite,
    output Branch,
    output [1:0] ALUOp
    );

	assign RegDst = (opCode == 6'b00_0000) ? 1 :
						 (opCode == 6'b10_0011) ? 0 :
						 (opCode == 6'b10_1011) ? 0 : // don't care
						 (opCode == 6'b00_0100) ? 0 : 0; // don't care
						 
	assign ALUSrc = (opCode == 6'b00_0000) ? 0 :
						 (opCode == 6'b10_0011) ? 1 :
						 (opCode == 6'b10_1011) ? 1 : 
						 (opCode == 6'b00_0100) ? 0 : 0; 

	assign MemtoReg = (opCode == 6'b00_0000) ? 0 :
						 (opCode == 6'b10_0011) ? 1 :
						 (opCode == 6'b10_1011) ? 0 : // don't care
						 (opCode == 6'b00_0100) ? 0 : 0; // don't care
						 
	assign RegWrite = (opCode == 6'b00_0000) ? 1 :
						 (opCode == 6'b10_0011) ? 1 :
						 (opCode == 6'b10_1011) ? 0 : 
						 (opCode == 6'b00_0100) ? 0 : 0;
						 
	assign MemRead = (opCode == 6'b00_0000) ? 0 :
						 (opCode == 6'b10_0011) ? 1 :
						 (opCode == 6'b10_1011) ? 0 :
						 (opCode == 6'b00_0100) ? 0 : 0; 
						 
	assign MemWrite = (opCode == 6'b00_0000) ? 0 :
						 (opCode == 6'b10_0011) ? 0 :
						 (opCode == 6'b10_1011) ? 1 : 
						 (opCode == 6'b00_0100) ? 0 : 0; 
						 
	assign Branch = (opCode == 6'b00_0000) ? 0 :
						 (opCode == 6'b10_0011) ? 0 :
						 (opCode == 6'b10_1011) ? 0 : 
						 (opCode == 6'b00_0100) ? 1 : 0; 

	assign ALUOp = (opCode == 6'b00_0000) ? 2'b10 :
						 (opCode == 6'b10_0011) ? 2'b00 :
						 (opCode == 6'b10_1011) ? 2'b00 : 
						 (opCode == 6'b00_0100) ? 2'b01 : 2'b00; 


endmodule
