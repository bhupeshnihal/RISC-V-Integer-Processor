`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bhupesh Nihal
// 
// Create Date:    06:53:45 06/04/2020 
// Design Name: 
// Module Name:    write_back 
// Project Name: RISC V Processor Design
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
module write_back(input [31:0] alu_out, input [31:0] memory_read, input ctrl, output [31:0] writetoreg
    );
assign writetoreg=ctrl?alu_out:memory_read;
endmodule
