`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bhupesh Nihal
// 
// Create Date:    08:00:40 06/04/2020 
// Design Name: 
// Module Name:    imm_gen 
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
module imm_gen(input [31:0] ins_code, output reg [31:0] immediate
    );
	 
always@(ins_code)
begin
case(ins_code[5:4])
2'b01:
begin
if(ins_code[12]==0)
immediate={{20{ins_code[31]}},ins_code[31:20]};
else
immediate={27'b0,ins_code[24:20]};
end
2'b00:immediate={{20{ins_code[31]}},ins_code[31:20]};
2'b10:
begin
if(ins_code[6]==0)
immediate={{20{ins_code[31]}},ins_code[31:25],ins_code[11:7]};
else
begin
immediate=ins_code[2]?{{20{ins_code[31]}},ins_code[31:20]}:{{20{ins_code[31]}},ins_code[7],ins_code[30:25],ins_code[11:8],1'b0};
end
end
default:immediate=32'bx;
endcase
end

endmodule
