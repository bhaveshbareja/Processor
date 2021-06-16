`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2017 04:00:21 PM
// Design Name: 
// Module Name: full_adder_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_4(
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output carry_out
    );
    wire c1,c2,c3;
    wire in=0;
    full_adder i1(a[0],b[0],in,sum[0],c1);
    full_adder i2(a[1],b[1],c1,sum[1],c2);
    full_adder i3(a[2],b[2],c2,sum[2],c3);
    full_adder i4(a[3],b[3],c3,sum[3],carry_out);
    
endmodule
