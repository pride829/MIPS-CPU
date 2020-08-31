`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:54:31 05/12/2018 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input clk,
    input rst,
    input [31:0] pc_next,
    output reg [31:0] pc_now
    );

	reg tick;

always @(posedge clk or posedge rst) begin // the first pc is 4!!
	if(rst == 1'b1) begin
		pc_now = 32'b0;
		tick = 1;
	end
	else begin
		//tick = ~tick; // using double clk for feedback
		//if(tick)
		#10
			pc_now = pc_next;
	end
end





endmodule
