`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:00 05/12/2018 
// Design Name: 
// Module Name:    Data_memory 
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
module Data_memory(
    input clk,
    input rst,
    input [31:0] Address,
    input [31:0] Write_data,
    input MemWrite,
    input MemRead,
    output reg [31:0] Read_data,
	 output [31:0] m0,
	 output [31:0] m4,
	 output [31:0] m8,
	 output [31:0] m12,
	 output [31:0] m16
    );
	 
	 reg [31:0] data_mem [0:1023];
	 
	 assign m0 = data_mem[0];
	 assign m4 = data_mem[4];
	 assign m8 = data_mem[8];
	 assign m12 = data_mem[12];
	 assign m16 = data_mem[16];
	 
	 always @(posedge clk, posedge rst) begin
		if(rst == 1'b1) begin
			data_mem[0] = 32'd1; 
			data_mem[4] = 32'd3; // start of array A
			data_mem[8] = 32'd7;
			data_mem[12] = 32'd11;	
			
			Read_data = 32'd0;
		end
		else begin
			#4
			if(MemWrite == 1'b1) begin // write before read?
				data_mem[Address] = Write_data;
			end
		
			if(MemRead == 1'b1) begin
				Read_data = data_mem[Address];
			end
		
		end
	 
	 end
	 
	 


endmodule
