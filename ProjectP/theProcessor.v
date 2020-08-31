// Verilog test fixture created from schematic C:\Users\user\Dropbox\study\Programmable logic design\ProjectP\theProcessor.sch - Sun May 13 00:20:01 2018

`timescale 1ns / 1ps

module theProcessor_theProcessor_sch_tb();

// Inputs
   reg clk;
   reg rst;

// Output
   wire [31:0] Read_reg;
	wire [31:0] Read_memory;
// Bidirs

// Instantiate the UUT
   theProcessor UUT (
		.clk(clk), 
		.rst(rst), 
		.Read_memory(Read_memory),
		.Read_reg(Read_reg)
   );
// Initialize Inputs

		initial begin
			clk = 0;
			forever begin
				#20 clk = ~clk;
			end
		end

      initial begin
		rst = 1;
		
		#100
		
		rst = 0;
		
		end
endmodule
