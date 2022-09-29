// Code your design here
`timescale 1ns / 1ns
module bitwise(x,y,z);
  input [1:0] x, y;
  output reg z;
  
  
  always @(*) begin
     if(x == y)   
         z <= 1;
     else 
         z <= 0;
      
     
     
  end
  
endmodule