
`include "clkgen.sv"
`include "rstgen.sv"
`include "stimulus.sv"
`include "signals.sv"
`include "output_validator.sv"
module mux_tb_top();
  
  
  output_validator output_validator_h;
  mux mux_inst(.clk(clk),.rst(rst),.i(i),.s(s),.y(y));
  
  initial begin
    clk=1'b0;
    rst=1'b1;
    s=0;
    clkgen_h=new();
    rstgen_h=new();
    stimulus_h=new();
    output_validator_h=new();
  end
  initial begin
    fork
      clkgen_h.clkgen_t();
      rstgen_h.rstgen_t();
      stimulus_h.stimulus_t();
      output_validator_h.output_validator_t();
    join
    
  end
  initial begin
    $dumpfile("file.vcd");
    $dumpvars(1);
  end
    
endmodule
  
