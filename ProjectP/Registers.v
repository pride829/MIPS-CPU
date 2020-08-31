`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:12 05/12/2018 
// Design Name: 
// Module Name:    Registers 
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
module Registers(
	 input clk,
	 input rst,
    input [4:0] read_reg1,
    input [4:0] read_reg2,
    input [4:0] write_reg,
    input [31:0] write_data,
    input RegWrite,
    output reg [31:0] read_data1,
    output reg [31:0] read_data2,
	 output [31:0] s0,
	 output [31:0] s1,
	 output [31:0] s2,
	 output [31:0] t0,
	 output [31:0] t1,
	 output [31:0] t2
    );
	 
	 reg [31:0] reg_mem[0:31]; 
	 
	 assign s0 = reg_mem[ 5'b10000 ];
	 assign s1 = reg_mem[ 5'b10001 ];
	 assign s2 = reg_mem[ 5'b10010 ];
	 
	 assign t0 = reg_mem[ 5'b01000 ];
	 assign t1 = reg_mem[ 5'b01001 ];
	 assign t2 = reg_mem[ 5'b01010 ];
	 
	 
	 always @(posedge clk, posedge rst) begin
		if(rst == 1'b1) begin // initial
			reg_mem[ 5'b00000 ] = 32'd0;  // $zero = 0
			reg_mem[ 5'b10000 ] = 32'd4;  // s0 = 4;  address of array A
			reg_mem[ 5'b10001 ] = 32'd0;  // s1 = 0;  initial value of i
			reg_mem[ 5'b10010 ] = 32'd7;  // s2 = 19; initial value of k
			
			read_data1 = 32'b0;
			read_data2 = 32'b0;
		end
		else begin
		
			read_data1 = reg_mem[read_reg1];
			read_data2 = reg_mem[read_reg2];
			#5 //// *****
			if(RegWrite == 1'b1) begin // read before wirte?
				reg_mem[write_reg] = write_data;
			end
			

		
		end
	 
	 
	 
	 end
	 
	 


endmodule
