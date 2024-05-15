`include "mode_16_counter.v"
module tb_counter_mod16;

  reg clk;
  reg rst;
  wire [3:0] count;
  counter_mod16 uut(
    .clk(clk),
    .rst(rst),
    .count(count)
  );
  initial begin
    clk = 0;
    forever #1 clk = ~clk;
  end
  initial begin
    $dumpfile("out.vcd");
    $dumpvars(0,tb_counter_mod16);
    rst = 1; 
    #10 rst = 0; 
    #31 $finish;
  end
  always @(posedge clk) begin
    $monitor("time=%g, input=%b, input=%b, output=%b\n", $time, clk, rst, count);
  end

endmodule
