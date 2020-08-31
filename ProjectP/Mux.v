`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:18:23 05/12/2018 
// Design Name: 
// Module Name:    Mux32 
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
module Mux32(
    input [31:0] input_l,
    input [31:0] input_h,
    input sel,
    output [31:0] mux_output
    );


	assign mux_output = (sel == 1'b1) ? input_h : input_l;


endmodule
