module ADCtb ;
  reg clk1;
  wire clk_2MHz1;
  reg dout1;
  wire din1;
  wire [4:0] count1;
  wire cs1;
  wire [1:0] rst1;
  wire [11:0] ADC11 ;
  wire [11:0] ADC21 ;
  wire [11:0] ADC31 ;
  wire [11:0] ADC41 ;
  
  initial clk1 <= 1 ;
  always #42 clk1 <= ~clk1 ; 
  
  initial begin 
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    #3276
    
    
    dout1 <= 0;#504
    
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
    #4032
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
    #4032
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
    #4032
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
     #4032
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
     #4032
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
     #4032
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
     #4032
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
     #4032
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
     #4032
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
     #4032
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 1;#504
    dout1 <= 0;#504
    dout1 <= 0;#504
    dout1 <= 1;#504
    dout1 <= 0;
    
    $finish ;
    
  end
  
  ADC inter(.din(din1),
            .dout(dout1),
            .cs(cs1),
            .clk(clk1),
            .count(count1),
            .rst(rst1),
            .ADC1(ADC11),
            .ADC2(ADC21),
            .ADC3(ADC31),
            .ADC4(ADC41),
            .clk_2MHz(clk_2MHz1));
  
    
endmodule