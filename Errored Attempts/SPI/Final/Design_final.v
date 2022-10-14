module spi (clk,din,dout,count,cs,rst,data_out);
  
  input clk;
  output reg din;
  input dout;
  output reg cs;
  output wire sclk;
  output reg [4:0] count;
  output reg [1:0] rst;
  output reg [11:0] data_out;
  
  reg Start,Single,D1,D2,D3;
  reg [11:0] data;
  reg [0:0] null_bit;
  
  initial begin 
    count = 0;
    cs = 1;
    Start  <= 1;
    Single <= 1;
    D1 <= 0;
    D2 <= 1;
    D3 <= 0;
    
  end
  
  always @(posedge clk) begin
    if (count == 19)
        cs <= 1;
    else
      cs<= 0;
  end

  always @(posedge clk) begin
    if ((rst == 1) || (count == 20))
      count <= 0;
    else 
    count <= count + 1;
  
   
    case (count)
      0: din <= Start;
      1: din <= Single;
      2: din <= D1;
      3: din <= D2;
      4: din <= D3;
      6: null_bit <= dout;
      7: data[11] <= dout;
      8: data[10] <= dout;
      9: data[9] <= dout;
      10: data[8] <= dout;
      11: data[7] <= dout;
      12: data[6] <= dout;
      13: data[5] <= dout;
      14: data[4] <= dout;
      15: data[3] <= dout;
      16: data[2] <= dout;
      17: data[1] <= dout;
      18: data[0] <= dout;
      19: data_out <= data;
    endcase
    
  end
  
  
endmodule
