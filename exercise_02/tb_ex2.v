`timescale 1ns / 1ps

module tb_exercise2();

    reg [3:0] a;
    wire [1:0] y;

    exercise2 uut(
        .a(a), 
        .y(y)
    );
    
    initial begin
        a = 4'b0000; #10;   
        a = 4'b0001; #10;   
        a = 4'b0010; #10;   
        a = 4'b0100; #10;   
        a = 4'b1000; #10;   
        a = 4'b1100; #10;   
        a = 4'b0000; #10;   
        $finish;
    end

endmodule
