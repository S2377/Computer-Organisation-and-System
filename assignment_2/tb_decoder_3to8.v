`include "decoder_3to8.v"
module tb_decoder;
reg [2:0] in_data;
wire [7:0] out_code;

// Instantiate the 8-to-3 decoder
decoder_3to8 obj(in_data,out_code);

initial begin
  $monitor("input=%b,output=%b\n", in_data,out_code);
    #2 in_data = 3'b000;
    #2 in_data = 3'b001;
    #2 in_data = 3'b010;
    #2 in_data = 3'b100;
    #2 in_data = 3'b110;
    #2 in_data = 3'b101;
    #2 in_data = 3'b111;
    #2 in_data = 3'b011;   
end
initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #100 $finish;
end
endmodule