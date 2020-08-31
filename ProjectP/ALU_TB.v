`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:41:14 05/12/2018
// Design Name:   ALU
// Module Name:   C:/Users/user/Dropbox/study/Programmable logic design/ProjectP/ALU_TB.v
// Project Name:  ProjectP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TB;

	// Inputs
	reg [31:0] input1;
	reg [31:0] input2;
	reg [3:0] ALUCtrl;

	// Outputs
	wire [31:0] ALU_result;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.input1(input1), 
		.input2(input2), 
		.ALUCtrl(ALUCtrl), 
		.ALU_result(ALU_result), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		input1 = 0;
		input2 = 0;
		ALUCtrl = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		input1 = 32'd128;
		input2 = 32'd128;
		ALUCtrl = 4'b0000;
		
		#100
		
		ALUCtrl = 4'b0001;

		#100
		
		ALUCtrl = 4'b0010;
		
		#100
		
		ALUCtrl = 4'b0110;
		
		#100
		
		ALUCtrl = 4'b0111;
		
		

	end
      
endmodule

