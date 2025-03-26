
parameter int DEPTH=16;
parameter int LENGTH = 32;
parameter int SELECTION_WIDTH=4;

logic clk;
logic rst;
logic [LENGTH-1:0] i [DEPTH-1:0];
logic [SELECTION_WIDTH-1:0] s;
logic [LENGTH-1:0]y;


clkgen clkgen_h;
rstgen rstgen_h;
stimulus stimulus_h;

