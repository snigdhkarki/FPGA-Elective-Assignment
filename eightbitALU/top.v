module alu_top (
    input  [7:0] a, 
    input  [7:0] b, 
    input  [1:0] sel, 
    output reg [15:0] result
);
    wire [7:0] sum_out, diff_out;
    wire [15:0] mult_out;
    wire cout, bout;

    rca_8bit        adder      (.a(a), .b(b), .cin(1'b0), .sum(sum_out), .cout(cout));
    sub_8bit        subtractor (.a(a), .b(b), .diff(diff_out), .bout(bout));
    shift_mult_8bit shifter    (.a(a), .b(b), .prod(mult_out));

    always @(*) begin
        case (sel)
            2'b00: result = sum_out;  
            2'b01: result = diff_out; 
            2'b10: result = mult_out;         
            default: result = 16'b0;
        endcase
    end
endmodule