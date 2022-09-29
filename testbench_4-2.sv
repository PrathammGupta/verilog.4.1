// Code your testbench here
// or browse Examples
`timescale 1ns / 1ns

module bitwise_tb();
 
	// Inputs
  reg [1:0] a;
  reg [1:0] b;

	// Outputs
  reg  c;
  task comparator(input reg[1:0]a,b, reg c);
     
    $display("x=%d, y=%d", a,b);
      begin
        if(c==1) begin
          $display("The numbers are equal");
          end else begin 
            $display("The numbers are not equal");
          end
      end
  endtask
	// Instantiate the Unit Under Test (UUT)
	bitwise bw1 (
      .x(a), 
      .y(b),  
      .z(c) 
	);

	initial begin
      
      $dumpfile("bwt.vcd");
      $dumpvars(1,bitwise_tb);
		a = 2'b11;
		b = 2'b10;	
      	#10
     comparator(a,b,c);

	   a = 3;
	   b = 3;
     #10
     comparator(a,b,c);


      a = 1;
	  b = 1;
     #10
     comparator(a,b,c);
  

     a = 1;
	 b = 2;
     #10
     comparator(a,b,c);
     
 
     a = 1;
	 b = 3;
     #10
     comparator(a,b,c); 

    

      	$finish;
	end	
    
     

endmodule