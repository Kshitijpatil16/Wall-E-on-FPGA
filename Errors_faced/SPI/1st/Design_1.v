module spi (clk,sclk,din,dout,cs,count);
  
  input clk;
  input din;
  output reg dout;
  output reg cs;
  input sclk;
  
  output reg [3:0] count;
  
  initial begin 
    count = 0;
    cs = 1;
  end
  
  always @(posedge clk) begin
    if (count == 1)
      begin
        cs <= 0;
      end
  end
  
  always @(posedge clk) begin
    count <= count + 1;
  end
  
 
endmodule