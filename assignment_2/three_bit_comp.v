module three_bit_comp(A,B,lt,eq,gt);
    input [2:0] A, B;
    output reg lt, eq, gt;

always @* begin
    if (A > B) begin
        lt = 0;
        eq = 0;
        gt = 1;
    end
    else if (A == B) begin
        lt = 0;
        eq = 1;
        gt = 0;
    end
    else begin
        lt = 1;
        eq = 0;
        gt = 0;
    end
end
endmodule
