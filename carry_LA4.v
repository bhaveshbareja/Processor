`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2017 10:36:56 AM
// Design Name: 
// Module Name: carry_LA4
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


module carry_LA4(
    input [3:0] in1,
    input [3:0] in2,
    output carry,
    output [3:0] sum_4
    );
    wire c0=0;
    wire temp,carry_temp1,carry_temp2,carry_temp3,gen0,gen1,gen2,gen3,prop0,prop1,prop2,prop3;
    
    carry_LA i1(in1[0],in2[0],0,gen0,prop0,sum_4[0]);
    assign carry_temp1=gen0;
    
    carry_LA i2(in1[1],in2[1],carry_temp1,gen1,prop1,sum_4[1]);
    or #1 a2(carry_temp2,gen1,(prop1&carry_temp1));
    
    carry_LA i3(in1[2],in2[2],carry_temp2,gen2,prop2,sum_4[2]);
    or #1 a3(carry_temp3,gen2,(prop2&carry_temp2));
    
    carry_LA i4(in1[3],in2[3],carry_temp3,gen3,prop3,sum_4[3]);
    or #1 a4(carry,gen3,(prop3&carry_temp3));
endmodule
