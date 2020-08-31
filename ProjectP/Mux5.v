`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:36 05/12/2018 
// Design Name: 
// Module Name:    Mux5 
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
module Mux5(
    input [4:0] input_l,
    input [4:0] input_h,
    input sel,
    output [4:0] mux_output
    );

	assign mux_output = (sel == 1'b1) ? input_h : input_l;


endmodule
