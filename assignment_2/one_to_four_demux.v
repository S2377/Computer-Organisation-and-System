`include "and_gate.v"
`include "not_gate.v"

module one_to_four_demux(I, S1, S0, f0, f1, f2, f3);

    input I,S1,S0;
    output f0,f1,f2,f3;

    wire w1, w2, w3, w4, w5, w6;

    not_gate n1(S0, w1);
    not_gate n2(S1, w2);

    and_gate a1(I, w1, w2, w3);
    and_gate a2(I, w1, S1, w4);
    and_gate a3(I, S0, w2, w5);
    and_gate a4(I, S0, S1, w6);

    assign f0 = w3;
    assign f1 = w4;
    assign f2 = w5;
    assign f3 = w6;

    
endmodule