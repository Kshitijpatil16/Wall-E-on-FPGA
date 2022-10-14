module ADC (clk,din,dout,count,cs,rst,clk_2MHz,ADC1,ADC2,ADC3,ADC4);
  
  input clk;
  output reg din;
  input dout;
  output reg cs;
  output reg clk_2MHz;
  output reg [7:0] count;
  output reg [1:0] rst;
  
  output reg [11:0] ADC1 ;
  output reg [11:0] ADC2 ;
  output reg [11:0] ADC3 ;
  output reg [11:0] ADC4 ;
  
  reg Start,Single;
  reg [11:0] data1;
  reg [11:0] data2;
  reg [11:0] data3;
  reg [11:0] data4;
  reg [2:0] D1 = 000 ;
  reg [2:0] D2 = 100 ;
  reg [2:0] D3 = 010 ;
  reg [2:0] D4 = 110 ;
  reg [0:0] null_bit;
 
  reg[7:0] counter = 0;
  
  initial begin 
    count <= 0;
    cs = 1;
    Start  <= 1;
    Single <= 1;
    
  end
  
  always @( negedge  clk_2MHz) begin
    if (count == 19 || count == 39 || count == 59 || count == 79)
        cs <= 1;
    else
      cs<= 0;
 
    if ((rst == 1) || (count == 79))
      count <= 0;
    else 
    count <= count + 1;
    
   case (count)
     
      0: din <= Start;
      1: din <= Single;
      2: din <= D1[0];
      3: din <= D1[1];
      4: din <= D1[2];
      6: null_bit <= dout;
      7: data1[11] <= dout;
      8: data1[10] <= dout;
      9: data1[9] <= dout;
      10: data1[8] <= dout;
      11: data1[7] <= dout;
      12: data1[6] <= dout;
      13: data1[5] <= dout;
      14: data1[4] <= dout;
      15: data1[3] <= dout;
      16: data1[2] <= dout;
      17: data1[1] <= dout;
      18: data1[0] <= dout;
     
      20: din <= Start;
      21: din <= Single;
      22: din <= D2[0];
      23: din <= D2[1];
      24: din <= D2[2];
      26: null_bit <=  dout;
      27: data2[11] <= dout;
      28: data2[10] <= dout;
      29: data2[9] <= dout;
      30: data2[8] <= dout;
      31: data2[7] <= dout;
      32: data2[6] <= dout;
      33: data2[5] <= dout;
      34: data2[4] <= dout;
      35: data2[3] <= dout;
      36: data2[2] <= dout;
      37: data2[1] <= dout;
      38: data2[0] <= dout;
    
      40: din <= Start;
      41: din <= Single;
      42: din <= D3[0];
      43: din <= D3[1];
      44: din <= D3[2];
      46: null_bit <= dout;
      47: data3[11] <= dout;
      48: data3[10] <= dout;
      49: data3[9] <= dout;
      50: data3[8] <= dout;
      51: data3[7] <= dout;
      52: data3[6] <= dout;
      53: data3[5] <= dout;
      54: data3[4] <= dout;
      55: data3[3] <= dout;
      56: data3[2] <= dout;
      57: data3[1] <= dout;
      58: data3[0] <= dout;
    
      60: din <= Start;
      61: din <= Single;
      62: din <= D4[0];
      63: din <= D4[1];
      64: din <= D4[2];
      66: null_bit <= dout;
      67: data4[11] <= dout;
      68: data4[10] <= dout;
      69: data4[9] <= dout;
      70: data4[8] <= dout;
      71: data4[7] <= dout;
      72: data4[6] <= dout;
      73: data4[5] <= dout;
      74: data4[4] <= dout;
      75: data4[3] <= dout;
      76: data4[2] <= dout;
      77: data4[1] <= dout;
      78: data4[0] <= dout;
      79: begin 
        ADC1 <= data1;
        ADC2 <= data2;
        ADC3 <= data3;
        ADC4 <= data4;
      end
      
    endcase
    
  end

  always @(posedge clk) begin
      counter <= counter + 1;
    if(counter>=5)
       counter <= 0;
    clk_2MHz <= (counter<3) ? 1:0;
   end
    
endmodule