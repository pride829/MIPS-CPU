`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:43 05/12/2018 
// Design Name: 
// Module Name:    Instruction_Memory 
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
module Instruction_Memory(
    input clk,
    input rst,
    input [31:0] read_address,
    output [31:0] inst
    );

	wire [31:0] inst_mem[0:1023]; // instruction memory

	assign inst_mem[0] = 32'h00004020; // add $t0 $zero $zero
	assign inst_mem[4] = 32'h8D090004; // lw $t1 4($t0)   # t1 = 3
	assign inst_mem[8] = 32'h8D0A0008; // lw $t2 8($t0)   # t2 = 7
	assign inst_mem[12] = 32'h012A4020; // add $t0 $t1 $t2  # t0 = 10
	assign inst_mem[16] = 32'h010A4022; // sub $t0 $t0 $t2  # t0 = 3 
	//assign inst_mem[16] = 32'h010B402A; // slt $t0 $t0 $t3 can't use!!
	//assign inst_mem[16] = 32'h00084100; // sll $t0 $t0 0x4 can't use!!
	assign inst_mem[20] = 32'h11090004; // beq $t0 $t1 0x4 
	assign inst_mem[24] = 32'h01094022; // sub $t0 $t0 t1
	assign inst_mem[28] = 32'h010A4020; // add $t0 $t0 t2  # t0 = 10
	assign inst_mem[32] = 32'hAC080000; // sw $t0 0x0 zero
	
	
	//write data is update after the clk , that's why we had a problem
	//it looks like add needs two clk cycle to work out?

	assign inst = inst_mem[read_address];


endmodule
