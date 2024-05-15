// 8-to-3 Encoder
module encoder_8to3 (
  input [7:0] in_data,
  output reg [2:0] out_code
);

  always @* begin
    case (in_data)
      8'b00000001: out_code = 3'b000;
      8'b00000010: out_code = 3'b001;
      8'b00000100: out_code = 3'b010;
      8'b00001000: out_code = 3'b011;
      8'b00010000: out_code = 3'b100;
      8'b00100000: out_code = 3'b101;
      8'b01000000: out_code = 3'b110;
      8'b10000000: out_code = 3'b111;
    endcase
  end
endmodule
