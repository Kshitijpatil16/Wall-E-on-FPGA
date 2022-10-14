module test_1_channel (clk_2MHz,din,dout,cs,output1,output2,c1,c2,c3,c4);

 spi A1 (/*.ADC1(S1), .ADC2(S2), .ADC3(S3), .ADC4(S4), */.data_out(S1),.clk_2MHz(clk), .din(din_1), .dout(dout_1), .cs(cs_1));
 
 pwm_1 A2 (.led1(output1_1), .data_in(pwm1), .clk1(clk));

 pwm_1 A3 (.led1(output2_2), .data_in(pwm2), .clk1(clk));
  
 output wire output1 ;
 output wire output2 ;
 wire output1_1;
 wire output2_2;
  reg[2:0] pwm1;
  reg[2:0] pwm2;
  wire [11:0] S1; 
  wire [11:0] S2;
  wire [11:0] S3;
  wire [11:0] S4;
 output wire clk_2MHz;
  wire clk;
  wire clk1;
 output wire din;
 input wire dout ;
 output  wire cs;
 output c1;
 output c2;
 output c3;
 output c4;
 
  
  reg s1;
  reg s2;
  reg s3;
  reg s4;
  reg signed [1:0] error;
  reg signed [1:0] cumulative_error;
  reg signed [1:0] diff_error;
  reg signed [1:0] prev_error;
  reg[11:0] optimum;
  reg signed [11:0] delta;
  reg[11:0] thr= 2048;
  //12b'000111110100;
  
  parameter kp = 8'b1;
  parameter ki = 8'b1;
  parameter kd = 8'b1;
  
  always @(posedge clk)begin
    optimum <= 60;
    if(S1 > thr)
    begin
      s1 <= 1;
    //  c1 <= 1;
      end
    else
      s1 <=0;
    if(S2> thr)
    begin
      s2 <= 1;
      //c2 <= 1;
      end
    else
      s2 <=0;
    if(S3> thr)
    begin
      s3 <= 1;
     // c3 <= 1;
      end
    else
      s3 <=0;
    if(S4> thr)
    begin
      s4 <= 1;
   //   c4 <= 1;
      end
    else
      s4 <=0;
 
    case ({S1,S2,S3,S4})
       4'b0110: 
        begin
        error<=0;
        cumulative_error <= 0;
        end
               
       4'b0011: 
        error<=1;
      
       4'b0001: 
        error<=2;
      
       4'b1100: 
        error<=-1;
      
       4'b1000: 
        error<=-2;
      
       4'b0000:
        begin
        error<=0;
        cumulative_error <= 0;
        diff_error <= 0;
        end
        endcase
      prev_error = error;
      diff_error <= prev_error - error;
      cumulative_error <= cumulative_error + error ;
        if(cumulative_error > 30 )
          cumulative_error <= 30;
        if(cumulative_error <-30)
          cumulative_error <=-30;
        
      delta <= kp*error + ki*cumulative_error + kd*diff_error ;
      
      pwm1 <= optimum - delta ;
      pwm2 <= optimum + delta;
      end
      assign c1=s1;
      /*assign c2=s2;
      assign c3=s3;
      assign c4=s4;*/
      
      assign output1 = output1_1;
      assign output2 = output2_2;
      assign din = din_1;
      assign dout = dout_1;
      assign cs = cs_1;
      assign clk = clk_2MHz;
      assign clk1= clk;
      endmodule
