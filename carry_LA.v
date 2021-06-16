`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2017 10:25:35 AM
// Design Name: 
// Module Name: carry_LA
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


module carry_LA(
    input in1,
    input in2,
    input in3,
    output fa_gen,
    output fa_prop,
    output fa_sum
    );
    wire ha_sum1,ha_sum2;
    
    xor #1 xor_gate1(ha_sum1,in1,in2);
    xor #1 xor_gate2(fa_sum,ha_sum1,in3);
    and #1 and_gate1(fa_gen,in1,in2);
    or  #1  or_gate1(fa_prop,in1,in2);
endmodule
