module TFlipFlop (
    input  wire clk, rst, T,
    output reg Q 	  
);

  initial begin
     Q<=1'b0;
	 end
  
  
	 always @(posedge clk or posedge rst) begin
	
        if (rst)
            Q <= 1'b0;       // Reset
        else if (T)
            Q <= ~Q;         // Toggle if T=1
        else
            Q <= Q;          // Hold if T=0
    end
endmodule
