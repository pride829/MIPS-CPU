`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:05 05/12/2018 
// Design Name: 
// Module Name:    Sign-extend 
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
module Sign_extend(
    input [15:0] inst,
    output [31:0] extended_inst
    );

	assign extended_inst = {16'b0, inst};


endmodule
