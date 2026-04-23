module alu_tb;
  reg [1:0]a,b,s;
  wire [2:0]y;
  ALU DUT(a,b,y,s);
  initial begin
     $dumpfile("dump.vcd");   
    $dumpvars(0, alu_tb);  
    $monitor(a,b,y,s);
   		a = 2'b10; b = 2'b01; s = 2'b00; #10;
        a = 2'b10; b = 2'b01; s = 2'b01; #10;
    	a = 2'b10; b = 2'b01; s = 2'b10; #10;
    $finish;
  end
  endmodule
  