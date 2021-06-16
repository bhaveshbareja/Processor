`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2017 03:11:21 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input in1_fa,
    input in2_fa,
    input in3_fa,
    output sum_fa,
    output carry_fa
    );
    wire sum_ha,carry_ha1,carry_ha2;
    half_adder instance1(in1_fa,in2_fa,sum_ha,carry_ha1);
    half_adder instance2(sum_ha,in3_fa,sum_fa,carry_ha2);
    xor #1 d(carry_fa,carry_ha1,carry_ha2);    
endmodule
