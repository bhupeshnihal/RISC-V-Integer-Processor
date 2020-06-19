`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bhupesh Nihal
// 
// Create Date:    09:56:00 06/06/2020 
// Design Name: 
// Module Name:    stall_detect 
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
module stall_detect(input [4:0] if_id_rs1, input [4:0] if_id_rs2, input [4:0] if_id_opcode,input [4:0] id_ex_rd, input id_ex_memr, output reg stall
    );
always@*
begin
if((if_id_opcode==5'b00100)||(if_id_opcode==5'b11001))
stall=((id_ex_memr==1)&&(id_ex_rd!=5'b0)&&(id_ex_rd==if_id_rs1))?1'b1:1'b0;
else
stall=((id_ex_memr==1)&&(id_ex_rd!=5'b0)&&((id_ex_rd==if_id_rs1)||(id_ex_rd==if_id_rs2)))?1'b1:1'b0;
end
endmodule
