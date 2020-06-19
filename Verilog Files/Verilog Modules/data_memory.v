`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bhupesh Nihal
// 
// Create Date:    06:25:00 06/04/2020 
// Design Name: 
// Module Name:    data_memory 
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
module data_memory(input [31:0] address, input [31:0] write_data, input read, input write ,input reset, output reg [31:0] read_data
    );
reg [7:0] dm [60:0];
always@*
begin
if(reset==0)
$readmemh("Data.mem",dm);
else
begin
if(write==1)
{dm[address+3],dm[address+2],dm[address+1],dm[address]}=write_data;
else if(read==1)
read_data={dm[address+3],dm[address+2],dm[address+1],dm[address]};
end
end
endmodule
