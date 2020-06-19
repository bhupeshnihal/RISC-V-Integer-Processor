`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bhupesh Nihal
// 
// Create Date:    05:54:49 06/04/2020 
// Design Name: 
// Module Name:    instruction_mem 
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
module instruction_mem(input [31:0] PC, input reset, output [31:0] instruction_code
    );
reg [7:0] mem [80:0];
assign instruction_code={mem[PC+3],mem[PC+2],mem[PC+1],mem[PC]};
always@(reset)
begin
if (reset==0)
$readmemh("Instruction.mem", mem);
end
endmodule
