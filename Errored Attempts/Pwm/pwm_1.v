module pwm_1(
input [2:0] data_in ,
output led1,
input wire clk1);

wire clk;


reg [6:0]count = 0;
always @(posedge clk)
begin
    if(count<100)
    begin
        count <= count+1;
    end else begin
        count<=0;
    end
end

assign led1 = (count<data_in)? 1:0;

endmodule
