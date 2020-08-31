// Verilog test fixture created from schematic C:\Users\user\Dropbox\study\Programmable logic design\ProjectP\theProcessor.sch - Sun May 13 10:50:04 2018

`timescale 1ns / 1ps

module theProcessor_theProcessor_sch_tb();

// Inputs
   reg clk;
   reg rst;

// Output
   wire [31:0] inst;
   wire [31:0] m0;
   wire [31:0] m4;
   wire [31:0] m8;
   wire [31:0] m12;
   wire [31:0] m16;
   wire [31:0] t2;
   wire [31:0] t1;
   wire [31:0] t0;
   wire [31:0] s2;
   wire [31:0] s1;
   wire [31:0] s0;

// Bidirs

// Instantiate the UUT
   theProcessor UUT (
		.clk(clk), 
		.rst(rst), 
		.inst(inst), 
		.m0(m0), 
		.m4(m4), 
		.m8(m8), 
		.m12(m12), 
		.m16(m16), 
		.t2(t2), 
		.t1(t1), 
		.t0(t0), 
		.s2(s2), 
		.s1(s1), 
		.s0(s0)
   );
// Initialize Inputs

		initial begin
		clk = 0;
		#2000;
		forever begin
			clk = ~clk;
			#2000;
		end
		end

      initial begin
		rst = 1;

		#1900
		rst = 0;
		


		end

endmodule
