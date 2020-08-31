`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:32:19 05/12/2018
// Design Name:   Registers
// Module Name:   C:/Users/user/Dropbox/study/Programmable logic design/ProjectP/Registers_TB.v
// Project Name:  ProjectP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Registers
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Registers_TB;

	// Inputs
	reg clk;
	reg rst;
	reg [4:0] read_reg1;
	reg [4:0] read_reg2;
	reg [4:0] write_reg;
	reg [31:0] write_data;
	reg RegWrite;

	// Outputs
	wire [31:0] read_data1;
	wire [31:0] read_data2;

	// Instantiate the Unit Under Test (UUT)
	Registers uut (
		.clk(clk), 
		.rst(rst), 
		.read_reg1(read_reg1), 
		.read_reg2(read_reg2), 
		.write_reg(write_reg), 
		.write_data(write_data), 
		.RegWrite(RegWrite), 
		.read_data1(read_data1), 
		.read_data2(read_data2)
	);

	initial begin
		clk = 0;
		#90
		forever begin
			#10
			clk = ~clk;
		end
	end

	initial begin
		// Initialize Inputs
		rst = 1;
		read_reg1 = 0;
		read_reg2 = 0;
		write_reg = 0;
		write_data = 0;
		RegWrite = 0;

		// Wait 100 ns for global reset to finish
		#140;
        
		// Add stimulus here
		rst = 0;
		read_reg1 = 5'b01010;
		read_reg2 = 5'b00100;
		
		#20
		
		RegWrite = 1;
		write_reg = 5'b01010;
		write_data = 32'd9;

		#20
		
		write_reg = 5'b00100;
		write_data = 32'd18;

		#20
		
		write_reg = 8;
		write_data = 32'd36;
		read_reg1 = 8;

	end
      
endmodule

