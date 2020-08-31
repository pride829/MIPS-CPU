`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:55:05 05/12/2018
// Design Name:   Data_memory
// Module Name:   C:/Users/user/Dropbox/study/Programmable logic design/ProjectP/Data_memory_TB.v
// Project Name:  ProjectP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Data_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Data_memory_TB;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] Address;
	reg [31:0] Write_data;
	reg MemWrite;
	reg MemRead;

	// Outputs
	wire [31:0] Read_data;

	// Instantiate the Unit Under Test (UUT)
	Data_memory uut (
		.clk(clk), 
		.rst(rst), 
		.Address(Address), 
		.Write_data(Write_data), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.Read_data(Read_data)
	);

	initial begin
		clk = 0;
		#100
		forever begin
			#10
			clk = ~clk;
		end
	end

	initial begin
		// Initialize Inputs
		rst = 1;
		Address = 0;
		Write_data = 0;
		MemWrite = 0;
		MemRead = 0;
		
		// Wait 100 ns for global reset to finish
		#120;
      rst = 0;  
		// Add stimulus here

		Address = 0;
		MemRead = 1;
		
		#50
		
		Write_data = 32'd11;
		MemWrite = 1;
		
		#50
		
		MemWrite = 0;
		Address = 1;


	end
      
endmodule

