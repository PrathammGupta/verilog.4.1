`timescale 1ns/1ns

module threebittb();
   reg [2:0] a = 3'd0;
   reg [2:0] b = 3'd0;
  wire [2:0] s;
   wire cout;
   threebit thrbit(s[0], s[1], s[2], cout, a[0], a[1], a[2], b[0],b[1], b[2]);
   initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1,threebittb);
     
     for (a =0; a<3; a++)
     begin
         
       for (b =0; b<2; b++)
         begin
           #10
           $display("a = %d, b = %d, Sum = %d, Cout = %d",a,b,s,cout);
         end 
        
     end 

      $finish;
   end
endmodule