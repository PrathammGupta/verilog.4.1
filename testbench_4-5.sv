`timescale 1ns/1ns

module threebittb();
  reg [2:0] x = 3'd0;
  reg [2:0] y = 3'd0;
  reg [2:0] s;
   wire cout;
  threebit thrbit(s[0], s[1], s[2], cout, x[0], x[1], x[2],y[0],y[1], y[2]);
  
  task result(input reg[2:0]x, input reg[2:0] y,reg [2:0]s, reg cout);
     
    $display("x=%d, y=%d, Sum = %d Cout = %d", x ,y, s, cout);
      begin
        if(cout == 1) begin
          $display("Calculation is not correct");
           $finish;
      end
      end
  endtask
   initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1,threebittb);
     
      x=5;
      y=2;
      #10
      result(x,y,s,cout);
      x=3;
      y=4;
      #10
       result(x,y,s,cout);
      
      x=6;
      y=3;
      #10
       result(x,y,s,cout);
      
      x=7;
      y=3;
      #10
       result(x,y,s,cout);
      $finish;
   end
endmodule