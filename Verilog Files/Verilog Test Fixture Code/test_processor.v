`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bhupesh Nihal
//
// Create Date:   05:11:28 06/08/2020
// Design Name:   main
// Module Name:   /home/ise/riscv_processor/test_processor.v
// Project Name:  RISC V Processor Design
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_processor;

	reg clk;
	reg reset;

	main uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
	reset=0;
	#3 reset=1;
	end
	
	initial begin
	clk=0;
	repeat(200)
	#5 clk=~clk;
	$finish;
	end
      
endmodule

