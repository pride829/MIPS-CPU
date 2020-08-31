// Verilog test fixture created from schematic C:\Users\user\Dropbox\study\Programmable logic design\ProjectP\theProcessor.sch - Sun May 13 00:22:46 2018

`timescale 1ns / 1ps

module theProcessor_theProcessor_sch_tb();

// Inputs
   reg clk;
   reg rst;

// Output
	wire [31:0] Read_memory;
	wire [31:0] Read_reg1;
	wire [31:0] Read_reg2;
	wire [31:0] inst;
	wire [31:0] write_data;
	wire [4:0] write_reg;
	wire [31:0] pc_next;
	wire [31:0] pc_now;
	
	wire RegWrite;
	wire [31:0] ALU_result;
// Bidirs

// Instantiate the UUT
   theProcessor UUT (
		.clk(clk), 
		.rst(rst), 
		.Read_memory(Read_memory),
		.ALU_result(ALU_result),
		.Read_reg1(Read_reg1),
		.Read_reg2(Read_reg2),
		.write_data(write_data),
		.write_reg(write_reg),
		.inst(inst),
		.RegWrite(RegWrite),
		.pc_now(pc_now),
		.pc_next(pc_next)
   );
// Initialize Inputs

		initial begin
			clk = 0;
			#100
			forever begin
				#20 clk = ~clk;
			end
		end

      initial begin
		rst = 1;
		
		#105
		rst = 0;
		end
endmodule
