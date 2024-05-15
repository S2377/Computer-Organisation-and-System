`include "encoder_8to3.v"
module tb_encoder;
reg [7:0] in_data;
wire [2:0] out_code;

// Instantiate the 8-to-3 encoder
encoder_8to3 obj(in_data,out_code);

initial begin
  $monitor("input=%b,output=%b\n", in_data,out_code);
    #2 in_data = 8'b00000001;
    #2 in_data = 8'b00000010;
    #2 in_data = 8'b00000100;
    #2 in_data = 8'b00001000;
    #2 in_data = 8'b00010000;
    #2 in_data = 8'b00100000;
    #2 in_data = 8'b01000000;
    #2 in_data = 8'b10000000;
end
initial begin
    $dumpfile("incode_out.vcd");
    $dumpvars;
    #100 $finish;
end
endmodule