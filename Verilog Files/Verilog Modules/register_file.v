`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bhupesh Nihal
// 
// Create Date:    05:59:35 06/04/2020 
// Design Name: 
// Module Name:    register_file 
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
module register_file(input [4:0] read_reg1,input [4:0] read_reg2, input[4:0] write_reg, input [31:0] write_data, 
input reset, input regwrite, input jal, input [4:0] ra, input [31:0] pc,
output [31:0] read_data1, output [31:0] read_data2
    );
reg [31:0] regmem [31:0];


always@(reset,jal,ra,pc)
begin
if (reset==0)
$readmemh("Registerfile.mem",regmem);
else
begin
if((jal==1)&&(ra!=5'b0))
regmem[ra]=pc+4;
end
end

always@(regwrite,write_data,write_reg)
begin
if ((regwrite==1)&&(write_reg!=5'b0))
regmem[write_reg]=write_data;
end


assign read_data1 =regmem[read_reg1];
assign read_data2 =regmem[read_reg2];

endmodule
