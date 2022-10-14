module test1 (S1,S2,S3,S4,clk,din,dout,cs,output1,output2);

 ADC A1 (.ADC1(S1), .ADC2(S2), .ADC3(S3), .ADC4(S4), .clk_2MHz(clk), 
 .din(din), .dout(dout), .cs(cs));

 pwm1 A2 (.led1(output1), .data_in(pwm1));

 pwm1 A3 (.led1(output2), .data_in(pwm2));
  
  wire output1 ;
  wire output2 ;

  reg[2:0] pwm1;
  reg[2:0] pwm2;
  input  reg[11:0] S1; 
  input  reg[11:0] S2;
  input  reg[11:0] S3;
  input  reg[11:0] S4;

  output wire din;
  wire dout ;
  output wire cs ;
  
  reg[0:0] s1;
  reg[0:0] s2;
  reg[0:0] s3;
  reg[0:0] s4;
  reg signed [1:0] error;
  reg signed [1:0] cumulative_error;
  reg signed [1:0] diff_error;
  reg signed [1:0] prev_error;
  reg[11:0] optimum;
  reg signed [11:0] delta;
  reg[11:0] thr= 12b'00111110100;
  
  parameter kp = 8'b1;
  parameter ki = 8'b1;
  parameter kd = 8'b1;
  
  always @(posedge clk)begin
    optimum <= 60;
    if(S1> thr)
      s1 <= 1;
    else
      s1 <=0;
    if(S2> thr)
      s2 <= 1;
    else
      s2 <=0;
    if(S3> thr)
      s3 <= 1;
    else
      s3 <=0;
    if(S4> thr)
      s4 <= 1;
    else
      s4 <=0;
 
    case ({S1,S2,S3,S4})
      begin 
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
      endmodule