module alu_top (
    input  [7:0] a, 
    input  [7:0] b, 
    input  [2:0] sel, 
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
            3'b000: result = sum_out;  
            3'b001: result = diff_out; 
            3'b010: result = mult_out;
            3'b011: result = a & b;
            3'b100: result = a | b;
            3'b101: result = a ^ b;
            3'b110: result = ~ (a & b);
            3'b111: result = ~ (a | b);         
            default: result = 16'b0;
        endcase
    end
endmodule