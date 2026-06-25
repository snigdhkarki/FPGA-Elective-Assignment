// ---------------------------------------------------------
// Testbench (Updated for Shift Multiplier)
// ---------------------------------------------------------
`timescale 1ns / 1ps

module tb_alu;
    // Inputs
    reg [7:0] a;
    reg [7:0] b;
    reg [1:0] sel;

    wire [15:0] result;

    alu_top uut (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .result(result)
    );

    initial begin
        a = 8'd25;   b = 8'd10;   sel = 2'b00;
        #10;
        $display("ADD    : %d + %d = %d", a, b, result);

        a = 8'd50;   b = 8'd15;   sel = 2'b01;
        #10;
        $display("SUB    : %d - %d = %d", a, b, result);

        // 3 * (2^8) = 3 * 256 = 768
        a = 8'd3;    b = 8'd8;    sel = 2'b10;
        #10;
        $display("2^n MUL: %d * 2^%d = %d", a, b, result);


        $finish;
    end
endmodule