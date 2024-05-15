// 3 -to-8 decoder
module decoder_3to8 (
  input [2:0] in_data,
  output reg [7:0] out_code
);
  always @* begin
    case(in_data)
      3'b000: out_code = 8'b00000001;
      3'b001: out_code = 8'b00000010;
      3'b010: out_code = 8'b00000100;
      3'b011: out_code = 8'b00001000;
      3'b100: out_code = 8'b00010000;
      3'b101: out_code = 8'b00100000;
      3'b110: out_code = 8'b01000000;
      3'b111: out_code = 8'b10000000;
    endcase
  end
endmodule
