`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2025 10:13:46 AM
// Design Name: 
// Module Name: exercises1
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


module exercises1(
    input a,
    input b,
    input c,
    output y,
    output z
    );

assign y = a & ( b | ~b&c); 
assign z = ~(a ^ b);
endmodule



