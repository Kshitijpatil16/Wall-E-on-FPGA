module spi (clk,sclk,din,dout,cs,rst);
  
  input clk;
  output din;
  input dout;
  output cs;
  output sclk;
  output reg [3:0] count;
  output reg [1:0] rst;
  
  reg A2,A1,A0;
  
  initial begin 
    count = 0;
    cs = 0;
    Start  <= 1;
    Single <= 1;
    D1 <= 0;
    D2 <= 1;
    D3 <= 0;
    
  end
  
  always @(posedge clk) begin
    if (count == 0)
      begin
        cs <= 0;
      end
  end
  
  assign sclk <= cs?1:clk
  
  
  always @(posedge clk) begin
    if ((rst == 1) || (count == 18))
      count <= 0;
    else 
    count <= count + 1;
  end
  
  always @(posedge clk) begin 
    case (count)
      1: begin 
        din <= Start;
      end
      2: begin
        din <= Single;
      end
      3: begin
        din <= D1;
      end
      4: begin 
        din <= D2;
      end
      5: bgin 
        din <= D3;
      end 
      default: begin 
        din <= 0;
      end
    endcase
  end
  
endmodule