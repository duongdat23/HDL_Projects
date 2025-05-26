`timescale 1ns / 1ps

module tb_xor4;

    reg [3:0] a;
    wire y;
    reg expected_y;

    reg [4:0] test_vectors [0:15];  // Mảng 16 phần tử, mỗi phần tử 5 bit
    integer i;

    // Instantiation module DUT
    xor4 uut (
        .a(a),
        .y(y)
    );

    initial begin
        // Gán test vectors
        test_vectors[0]  = 5'b00000;
        test_vectors[1]  = 5'b00011;
        test_vectors[2]  = 5'b00101;
        test_vectors[3]  = 5'b00110;
        test_vectors[4]  = 5'b01001;
        test_vectors[5]  = 5'b01010;
        test_vectors[6]  = 5'b01100;
        test_vectors[7]  = 5'b01111;
        test_vectors[8]  = 5'b10001;
        test_vectors[9]  = 5'b10010;
        test_vectors[10] = 5'b10100;
        test_vectors[11] = 5'b10111;
        test_vectors[12] = 5'b11000;
        test_vectors[13] = 5'b11011;
        test_vectors[14] = 5'b11101;
        test_vectors[15] = 5'b11111;

        $display("Starting self-checking testbench...");

        for (i = 0; i < 16; i = i + 1) begin
            {a, expected_y} = test_vectors[i];
            #1;  // Đợi 1ns để ổn định

            if (y !== expected_y) begin
                $display("MISMATCH at input=%b | expected=%b | actual=%b", a, expected_y, y);
            end else begin
                $display("PASS at input=%b | output=%b", a, y);
            end
        end

        $display("Test completed.");
        $finish;
    end

endmodule


