`include "three_bit_comp.v"

module tb_three_bit_comp;
    reg [2:0] A, B;
    wire lt, eq, gt;
    three_bit_comp obj(A, B, lt, eq, gt); 

initial begin
$monitor("A=%b, B=%b\n, lt=%b\n, eq=%b\n, gt=%b\n", A, B, lt, eq, gt);
      // Test case 1: A equals B
        A = 3'b000;
        B = 3'b000;
        #10;
        // Test case 2: A is greater than B
        A = 3'b101;
        B = 3'b010;
        #10;
        // Test case 3: A is less than B
        A = 3'b010;
        B = 3'b101;
        #10;
end
initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #100 $finish;
end

endmodule
