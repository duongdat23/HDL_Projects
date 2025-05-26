`timescale 1ns / 1ps

module xor4(
    input [3:0]a,
    output y
    );
    
assign y = ^a ;
endmodule
