module lsa (din,ADC1,ADC2,ADC3,ADC4,cs,clk,rst,count,data_out);
  //d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11);
  
  output reg din;
  output reg cs;
  input clk;
  output reg [1:0] rst;
  output reg [7:0] count;
  input ADC1 ;
  input  ADC2 ;
  input  ADC3 ;
  input  ADC4 ;
  
  
  //output wire sclk;
  //output d0;
  //output d1;
  //output d2;
  //output d3;
  //output d4;
  //output d5;
  //output d6;
  //output d7;
  //output d8;
  //output d9;
  //output d10;
  //output d11;
  
  
   //SB_HFOSC inthosc(.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(clk));
  
  output reg [11:0] data_out ;
  reg Start,Single;
  reg [11:0] data;
  reg [0:0] null_bit;
  reg [2:0] D1 = 000 ;
  reg [2:0] D2 = 100 ;
  reg [2:0] D3 = 010 ;
  reg [2:0] D4 = 110 ;
  
  initial begin 
    count <= 0 ;
    cs = 1;
    Start  <= 1;
    Single <= 1;
    
    end
  
  always @(posedge clk) begin
    if (count == 79)
        cs <= 1;
    else
      cs<= 0;
  end

  always @(posedge clk) begin
    if ((rst == 1) || (count == 80))
      count <= 0;
    else 
    count <= count + 1;
  
   
    case (count)
      
      0: din <= Start;
      1: din <= Single;
      2: din <= D1[0];
      3: din <= D1[1];
      4: din <= D1[2];
      6: null_bit <= ADC1;
      7: data[11] <= ADC1;
      8: data[10] <= ADC1;
      9: data[9] <= ADC1;
      10: data[8] <= ADC1;
      11: data[7] <= ADC1;
      12: data[6] <= ADC1;
      13: data[5] <= ADC1;
      14: data[4] <= ADC1;
      15: data[3] <= ADC1;
      16: data[2] <= ADC1;
      17: data[1] <= ADC1;
      18: data[0] <= ADC1;
      19: data_out <= data;
      20: din <= Start;
      21: din <= Single;
      22: din <= D2[0];
      23: din <= D2[1];
      24: din <= D2[2];
      26: null_bit <= ADC2;
      27: data[11] <= ADC2;
      28: data[10] <= ADC2;
      29: data[9] <= ADC2;
      30: data[8] <= ADC2;
      31: data[7] <= ADC2;
      32: data[6] <= ADC2;
      33: data[5] <= ADC2;
      34: data[4] <= ADC2;
      35: data[3] <= ADC2;
      36: data[2] <= ADC2;
      37: data[1] <= ADC2;
      38: data[0] <= ADC2;
      39: data_out <= data ;
      40: din <= Start;
      41: din <= Single;
      42: din <= D3[0];
      43: din <= D3[1];
      44: din <= D3[2];
      46: null_bit <= ADC3;
      47: data[11] <= ADC3;
      48: data[10] <= ADC3;
      49: data[9] <= ADC3;
      50: data[8] <= ADC3;
      51: data[7] <= ADC3;
      52: data[6] <= ADC3;
      53: data[5] <= ADC3;
      54: data[4] <= ADC3;
      55: data[3] <= ADC3;
      56: data[2] <= ADC3;
      57: data[1] <= ADC3;
      58: data[0] <= ADC3;
      59: data_out <= data;
      60: din <= Start;
      61: din <= Single;
      62: din <= D4[0];
      63: din <= D4[1];
      64: din <= D4[2];
      66: null_bit <= ADC4;
      67: data[11] <= ADC4;
      68: data[10] <= ADC4;
      69: data[9] <= ADC4;
      70: data[8] <= ADC4;
      71: data[7] <= ADC4;
      72: data[6] <= ADC4;
      73: data[5] <= ADC4;
      74: data[4] <= ADC4;
      75: data[3] <= ADC4;
      76: data[2] <= ADC4;
      77: data[1] <= ADC4;
      78: data[0] <= ADC4;
      79: data_out <= data;
    endcase
    
  end
  //assign d0 = data_out[0];
  //assign d1 = data_out[1];
  //assign d2 = data_out[2];
  //assign d3 = data_out[3];
  //assign d4 = data_out[4];
  //assign d5 = data_out[5];
  //assign d6 = data_out[6];
  //assign d7 = data_out[7];
  //assign d8 = data_out[8];
  //assign d9 = data_out[9];
  //assign d10 = data_out[10];
  //assign d11 = data_out[11];
  
endmodule