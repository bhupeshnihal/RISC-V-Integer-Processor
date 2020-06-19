`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bhupesh Nihal
// 
// Create Date:    07:53:14 06/04/2020 
// Design Name: 
// Module Name:    alusourcemux 
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
module alusourcemux(input [31:0] immediate, input [31:0] reg_data2, input ctrl, input mem_write, output [31:0]alu_in2
    );
assign alu_in2=ctrl?immediate:reg_data2;
endmodule
