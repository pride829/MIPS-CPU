`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:59 05/12/2018 
// Design Name: 
// Module Name:    ALU 
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

// combinational logic

module ALU( 
    input [31:0] input1,
    input [31:0] input2,
    input [3:0] ALUCtrl,
    output [31:0] ALU_result,
	 output zero
    );

	assign ALU_result = (ALUCtrl == 4'b0000) ? input1 & input2 :
							  (ALUCtrl == 4'b0001) ? input1 | input2 :
							  (ALUCtrl == 4'b0010) ? input1 + input2 :
							  (ALUCtrl == 4'b0110) ? input1 - input2 : 
							  (ALUCtrl == 4'b0111) ? (input1 < input2) : 32'b0;
							  //(ALUCtrl == 4'b1100) ? input1 ~| input2 : 32'b0; // syntax error?
							  
	assign zero = ALU_result == 0;

endmodule
