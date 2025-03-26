
class clkgen;
  task clkgen_t();
    forever #5 clk=~clk;
  endtask
endclass

    