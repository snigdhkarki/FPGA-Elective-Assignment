module shift_mult_8bit (
    input  [7:0] a, 
    input  [7:0] b, 
    output [15:0] prod
);
    wire [15:0] a_ext = {8'b0, a};
    
    wire [15:0] stage1, stage2, stage3, stage4;

    assign stage1 = b[0] ? (a_ext << 1) : a_ext;

    assign stage2 = b[1] ? (stage1 << 2) : stage1;

    assign stage3 = b[2] ? (stage2 << 4) : stage2;

    assign stage4 = b[3] ? (stage3 << 8) : stage3;

    assign prod = stage4;

endmodule