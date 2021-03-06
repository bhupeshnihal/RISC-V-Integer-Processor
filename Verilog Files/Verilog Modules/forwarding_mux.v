`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bhupesh Nihal
// 
// Create Date:    11:59:43 06/06/2020 
// Design Name: 
// Module Name:    forwarding_mux 
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
module forwarding_mux(input [31:0] rs1_data, input [31:0] rs2_data, input [31:0] ex_forward_data, input [31:0] mem_forward_data,
input [1:0] forward_rs1, input [1:0] forward_rs2, output reg [31:0] alumux_in1,output reg [31:0] alumux_in2
    );
	 
always@(rs1_data,ex_forward_data,mem_forward_data,forward_rs1)
begin
case(forward_rs1)
2'b00: alumux_in1=rs1_data;
2'b01: alumux_in1=ex_forward_data;
2'b10: alumux_in1=mem_forward_data;
default: alumux_in1=32'bx;
endcase
end

always@(rs2_data,ex_forward_data,mem_forward_data,forward_rs2)
begin
case(forward_rs2)
2'b00: alumux_in2=rs2_data;
2'b01: alumux_in2=ex_forward_data;
2'b10: alumux_in2=mem_forward_data;
default: alumux_in2=32'bx;
endcase
end
endmodule
