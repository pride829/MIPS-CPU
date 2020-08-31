`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:48:56 05/12/2018
// Design Name:   Instruction_Memory
// Module Name:   C:/Users/user/Dropbox/study/Programmable logic design/ProjectP/Instruction_Memory_TB.v
// Project Name:  ProjectP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Instruction_Memory_TB;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] read_address;

	// Outputs
	wire [31:0] inst;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Memory uut (
		.clk(clk), 
		.rst(rst), 
		.read_address(read_address), 
		.inst(inst)
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
		read_address = 0;

		// Wait 100 ns for global reset to finish
		#150;
       
		rst = 0;
		// Add stimulus here

		
		#500
		read_address = 32;

	end
      
endmodule

