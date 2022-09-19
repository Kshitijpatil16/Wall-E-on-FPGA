module PID ( delta );
  
  output reg [ 7:0 ] delta ;
  reg proportional ;
  reg integral ;
  reg derivative ;
  reg kp = 0.432;
  reg ki = 0.423;
  reg kd = 0.6;
  input clk ;
  
  
  reg myerror;
  reg myadder;
  
  reg error ;
  reg error_addition ;
  reg prev_error ;
  
  initial begin 
    
    myerror = 0 ;
    prev_error = 0 ;
    myadder = 0 ;
    
  end 
  
  always @ ( count == 0 ) begin 
    
    myerror <= error ;
    difference = error - prev_error ;
    prev_error <= myerror ;
    
  end 
  
  always @ ( posedge clk ) begin 
    
    myadder = myadder + error ;
    error_addition = myadder ; 
    
  end
  
  assign proportional = kp*error ;
  assign integral = ki*error_addition ;
  assign derivative = kd*difference ; 
  
  assign delta = proportional + integral + derivative ; 
  
  // this value will be passed on further and added in the voltage regulation which determines the speed of the motors 
  
endmodule