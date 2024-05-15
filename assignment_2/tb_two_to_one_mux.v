`include "two_to_one_mux.v"

module tb_two_to_one_mux;

    reg I0,I1,S;
    wire f;

two_to_one_mux m1(I0,I1,S,f);

initial begin
    $monitor("input=%b, input=%b, input=%b, output=%b\n",I0,I1,S,f);
    #2 I0=1'b0; I1=1'b0; S=1'b0;
    #2 I0=1'b0; I1=1'b1; S=1'b0;
    #2 I0=1'b0; I1=1'b1; S=1'b1;
    #2 I0=1'b0; I1=1'b0; S=1'b1;
    #2 I0=1'b1; I1=1'b0; S=1'b1;
    #2 I0=1'b1; I1=1'b0; S=1'b0;
    #2 I0=1'b1; I1=1'b1; S=1'b0;
    #2 I0=1'b1; I1=1'b1; S=1'b1;
    
end

initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #100 $finish;
end

endmodule