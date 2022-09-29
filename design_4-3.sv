`timescale 1ns/1ns

module fulladder (output reg [2:0] sum,output reg cout,input [2:0] a,input [2:0] b,input cin);  
                   
                     
   always @ (a or b) begin  
          {cout, sum} = x + y + cin;  

  end  
endmodule  