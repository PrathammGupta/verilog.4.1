 `timescale 1ns/1ns

module halfadder 
(
   input a,
   input b,
   output sum,
   output cout
);
 
 
  assign sum   = a ^ b;  
  assign cout = a & b;  
 
endmodule 


module fulladder(sum,cout,a,b,cin);
    input a;
    input b;
    input cin;
    output sum;
    output cout;
  
    assign sum = a^b^cin;
    assign cout = a&&b || a&&cin || b&&cin;

endmodule


module threebit(output s0, output s1, output s2, output cout, input x0, input x1, input x2, input y0, input y1, input y2);
  
  wire w1, w2;
  halfadder a(x0,y0,s0, w1);
  fulladder b(s1,w2,x1,y1, w1); 
  fulladder b1(s2,cout,x2,y2,w2);
  

endmodule