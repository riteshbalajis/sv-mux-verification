
module mux (
    input logic clk,rst,
  input  logic [31:0] i [15:0],
  input  logic [3:0] s,
  output reg [31:0] y
);

  always @(posedge clk or negedge clk)
  begin
    if(rst)begin
      assign y=0;
    end
  else begin
    assign y=i[s];
  end
  end  
endmodule