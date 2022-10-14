module spi (din,dout,cs,
//d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,
data_out, clk_2MHz,/*rst*/);
  
  output reg din;
  input dout;
  output reg cs;
  output reg clk_2MHz;
  /* output d0;
  output d1;
  output d2;
  output d3;
  output d4;
  output d5;
  output d6;
  output d7;
  output d8;
  output d9;
  output d10;
  output d11;*/
 wire rst;
  wire clk ;
  SB_HFOSC inthosc(.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(clk));
  reg [4:0] count;
  output reg [11:0] data_out;
  
  reg Start,Single,D1,D2,D3;
  reg [11:0] data;
  reg [0:0] null_bit;
 
  reg[7:0] counter = 8'd0;
  parameter DIVISOR = 8'd24;
  
  initial begin 
    count <= 0;
    cs = 1;
    Start  <= 1;
    Single <= 1;
    D1 <= 0;
    D2 <= 1;
    D3 <= 0;
    
  end
  
 /* always @(posedge clk) begin
      counter <= counter + 8'd1;
      if(counter>=(DIVISOR-1))
       counter <= 8'd0;
    clk_2MHz <= (counter<DIVISOR/2)?1'b1:1'b0;
   end
   */
     always @(posedge clk) begin
      
      if (counter >= 19 )
       counter <= 0;
      else 
      counter <= counter + 1;
      
    clk_2MHz <= (counter < 9)?1:0;
    
   end
   
  always @(negedge clk_2MHz) begin
    
    if (count == 19)
        cs <= 1;
    else
      cs<= 0;
      
      
      
  end

  always @(negedge clk_2MHz) begin
    if ((rst == 1) || (count == 19))
      count <= 0;
    else 
    count <= count + 1;
  
   case (count)
     
      0: din <= Start;
      1: din <= Single;
      2: din <= D1;
      3: din <= D2;
      4: din <= D3;
      6: null_bit <= 0;
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

  

 /* assign d0 = data_out[0];
  assign d1 = data_out[1];
  assign d2 = data_out[2];
  assign d3 = data_out[3];
  assign d4 = data_out[4];
  assign d5 = data_out[5];
  assign d6 = data_out[6];
  assign d7 = data_out[7];
  assign d8 = data_out[8];
  assign d9 = data_out[9];
  assign d10 = data_out[10];
  assign d11 = data_out[11];
  */  
endmodule
