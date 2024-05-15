`include "one_to_four_demux.v"

module tb_one_to_four_demux;

    reg I,S1,S0;
    wire f0,f1,f2,f3;

one_to_four_demux dm(I, S1, S0, f0, f1, f2, f3);

initial begin
    $monitor("input=%b, S1=%b, S0=%b, output=%b\n, output=%b\n, output=%b\n, output=%b\n", I,S1,S0,f0,f1,f2,f3);
    #2 I=1'b0; S1=1'b0; S0=1'b0;
    #2 I=1'b0; S1=1'b1; S0=1'b0;
    #2 I=1'b0; S1=1'b1; S0=1'b1;
    #2 I=1'b0; S1=1'b0; S0=1'b1;
    #2 I=1'b1; S1=1'b0; S0=1'b1;
    #2 I=1'b1; S1=1'b0; S0=1'b0;
    #2 I=1'b1; S1=1'b1; S0=1'b0;
    #2 I=1'b1; S1=1'b1; S0=1'b1;
    
end

initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #100 $finish;
end

endmodule