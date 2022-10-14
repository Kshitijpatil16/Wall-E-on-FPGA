`include "Design.v"

module spitb ;
  reg clk1;
  reg dout1;
  wire din1;
  wire [4:0] count1;
  wire cs1;
  wire [1:0] rst1;
  wire [11:0] data_out1;
  
  initial begin 
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    
    clk1<=1;#10;
    clk1<=0;#10; //2
    clk1<=1;#10;
    clk1<=0;#10; //3
    clk1<=1;#10;
    clk1<=0;#10; //4
    clk1<=1;#10;
    clk1<=0;#10;//5
    clk1<=1;#10;
    clk1<=0;#10;
    clk1<=1;#10;//6
    dout1<=0;
    clk1<=0;#10;
    
    clk1<=1;#10;//7
    dout1 <= 1;
    clk1<=0;#10;
    
    clk1<=1;#10;//8
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//9
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//10
    dout1 <=0;
    clk1<=0;#10;
    
    clk1<=1;#10;//11
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//12
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//13
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//14
    dout1 <=0;
    clk1<=0;#10;
    
    clk1<=1;#10;//15
    dout1 <=0;
    clk1<=0;#10;
    
    clk1<=1;#10;//16
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//17
    dout1 <=0;
    clk1<=0;#10;
    
    clk1<=1;#10;//18
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//19
    dout1 <= 0;
    clk1<=0;#10;//20
    clk1<=1;#10;
    clk1<=0;#10;//1
    clk1<=1;#10;
    clk1<=0;#10;//2
    clk1<=1;#10;
    clk1<=0;#10;//3
    clk1<=1;#10;
    clk1<=0;#10;//4
    clk1<=1;#10;
    clk1<=0;#10;//5
    clk1<=1;#10;
     clk1<=0;#10;
    clk1<=1;#10;//6
    dout1<=0;
    clk1<=0;#10;
    
    clk1<=1;#10;//7
    dout1 <= 1;
    clk1<=0;#10;
    
    clk1<=1;#10;//8
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//9
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//10
    dout1 <=0;
    clk1<=0;#10;
    
    clk1<=1;#10;//11
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//12
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//13
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//14
    dout1 <=0;
    clk1<=0;#10;
    
    clk1<=1;#10;//15
    dout1 <=0;
    clk1<=0;#10;
    
    clk1<=1;#10;//16
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//17
    dout1 <=0;
    clk1<=0;#10;
    
    clk1<=1;#10;//18
    dout1 <=1;
    clk1<=0;#10;
    
    clk1<=1;#10;//19
    dout1 <= 0;
    clk1<=0;#10;//20
    clk1<=1;#10;
    clk1<=1;#10;
    clk1<=0;#10;
    clk1<=1;#10;
    clk1<=0;#10;
    clk1<=0;#10;
    clk1<=0;#10; //1
    
  end
  
  spi inter( .clk(clk1), 
             .din(din1), 
             .dout(dout1), 
             .cs(cs1), 
             .count(count1), 
            .rst(rst1),
            . data_out(data_out1));
  
    
endmodule