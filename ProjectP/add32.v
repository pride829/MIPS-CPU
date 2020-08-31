`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:22:22 05/12/2018 
// Design Name: 
// Module Name:    add4_32 
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
module add4_32(
    input [31:0] add_input,
    output [31:0] add_output
    );

	assign add_output = add_input + 32'd4;

endmodule
