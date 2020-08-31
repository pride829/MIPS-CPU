`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:39 05/12/2018 
// Design Name: 
// Module Name:    Shift_left_2 
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
module Shift_left_2(
    input [31:0] sl_input,
    output [31:0] sl_output
    );

	assign sl_output = {sl_input[29:2] , 2'b0};


endmodule
