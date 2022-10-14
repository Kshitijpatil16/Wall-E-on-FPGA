module lsatb ;
  
  reg ADC1t ;
  reg ADC2t ;
  reg ADC3t ;
  reg ADC4t ;
  wire dint ;
  wire cst ;
  reg clkt ;
  wire countt ;
  wire rstt ;
  //wire sclk ;
  //wire d0;
  //wire d1;
  //wire d2;
  //wire d3;
  //wire d4;
  //wire d5;
  //wire d6;
  //wire d7;
  //wire d8;
  //wire d9;
  //wire d10;
  //wire d11;
  
  
  lsa f(.din(dint),
        .ADC1(ADC1t),
        .ADC2(ADC2t),
        .ADC3(ADC3t),
        .ADC4(ADC4t),
        .cs(cst),
        .clk(clkt),
        .count(countt),
        .rst(rstt));
  
  initial clkt <= 1 ;
  always #10 clkt <= ~clkt ;
  
  initial begin 
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    #110
    ADC1t <= 0 ;
    #20
    ADC1t <= 1 ;
    #20
    ADC1t <= 1 ;
    #20
    ADC1t <= 0 ;
    #20
    ADC1t <= 0 ;
    #20
    ADC1t <= 0 ;
    #20
    ADC1t <= 1 ;
    #20
    ADC1t <= 1 ;
    #20
    ADC1t <= 0 ;
    #20
    ADC1t <= 1 ;
    #20
    ADC1t <= 1 ;
    
    #130 
    ADC2t <= 0 ;
    #20
    ADC2t <= 1 ;
    #20
    ADC2t <= 1 ;
    #20
    ADC2t <= 0 ;
    #20
    ADC2t <= 0 ;
    #20
    ADC2t <= 0 ;
    #20
    ADC2t <= 1 ;
    #20
    ADC2t <= 1 ;
    #20
    ADC2t <= 0 ;
    #20
    ADC2t <= 1 ;
    #20
    ADC2t <= 1 ;
    
    #130
    ADC3t <= 0 ;
    #20
    ADC3t <= 1 ;
    #20
    ADC3t <= 1 ;
    #20
    ADC3t <= 0 ;
    #20
    ADC3t <= 0 ;
    #20
    ADC3t <= 0 ;
    #20
    ADC3t <= 1 ;
    #20
    ADC3t <= 1 ;
    #20
    ADC3t <= 0 ;
    #20
    ADC3t <= 1 ;
    #20
    ADC3t <= 1 ;
    
    #130
    ADC4t <= 0 ;
    #20
    ADC4t <= 1 ;
    #20
    ADC4t <= 1 ;
    #20
    ADC4t <= 0 ;
    #20
    ADC4t <= 0 ;
    #20
    ADC4t <= 0 ;
    #20
    ADC4t <= 1 ;
    #20
    ADC4t <= 1 ;
    #20
    ADC4t <= 0 ;
    #20
    ADC4t <= 1 ;
    #20
    ADC4t <= 1 ;
    
     
    
    
    $finish ;
    
  end 
  
endmodule