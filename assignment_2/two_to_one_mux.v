`include "and_gate.v"
`include "or_gate.v"

module two_to_one_mux(I0,I1,S,f);

    input I0,I1,S;
    output f;
    wire w1,w2;
    
    and_gate a1(I0, ~S, w1);
    and_gate a2(I1, S, w2);
    or_gate  o(w1,w2,f);

endmodule