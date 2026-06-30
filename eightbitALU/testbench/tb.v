`timescale 1ns / 1ps

module tb_alu;
    reg [7:0] a;
    reg [7:0] b;
    reg [2:0] sel;

    wire [15:0] result;

    alu_top uut (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .result(result)
    );

    initial begin

        $dumpfile("alu.vcd");
        $dumpvars(0, tb_alu);
        
        a = 8'd25;   b = 8'd10;   sel = 3'b000;
        #10;
        $display("ADD    : %d + %d = %d", a, b, result);

        a = 8'd50;   b = 8'd15;   sel = 3'b001;
        #10;
        $display("SUB    : %d - %d = %d", a, b, result);

        // 3 * (2^8) = 3 * 256 = 768
        a = 8'd3;    b = 8'd8;    sel = 3'b010;
        #10;
        $display("2^n MUL: %d * 2^%d = %d", a, b, result);

        a = 8'd50;   b = 8'd15;   sel = 3'b011;
        #10;
        $display("AND    : %d AND %d = %d", a, b, result);

        a = 8'd50;   b = 8'd15;   sel = 3'b100;
        #10;
        $display("OR    : %d OR %d = %d", a, b, result);

        a = 8'd50;   b = 8'd15;   sel = 3'b101;
        #10;
        $display("XOR    : %d XOR %d = %d", a, b, result);

        a = 8'd50;   b = 8'd15;   sel = 3'b110;
        #10;
        $display("NAND    : %d NAND %d = %d", a, b, result);

        a = 8'd50;   b = 8'd15;   sel = 3'b111;
        #10;
        $display("NOR    : %d NOR %d = %d", a, b, result);



        $finish;
    end
endmodule