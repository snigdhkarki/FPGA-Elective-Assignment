module sub_8bit (
    input  [7:0] a, 
    input  [7:0] b, 
    output [7:0] diff, 
    output       bout
);
    wire [7:0] b_inv;
    assign b_inv = ~b; 
    
    // A - B = A + (~B) + 1
    rca_8bit subtractor (
        .a(a), 
        .b(b_inv), 
        .cin(1'b1), 
        .sum(diff), 
        .cout(bout)
    );
endmodule