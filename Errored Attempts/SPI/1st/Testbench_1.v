module spitb ;
  reg clk1;
  reg cnt1;
  wire sclk1;
  wire dout1;
  wire din1;
  wire [3:0] count1;
  wire cs1;
  
  initial begin 
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10 
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1;#10
    clk1 <= 0;#10
    clk1 <= 1; #10;
  end
   
 initial begin 
   if(count1 == 18)
     clk1=0;
   else
    count1 <= count1+ 1;
 end
  
  spi inter(.clk(clk1), .sclk(sclk1), .din(din1), .dout(dout1), .cs(cs1), .count(count1));
 
endmodule