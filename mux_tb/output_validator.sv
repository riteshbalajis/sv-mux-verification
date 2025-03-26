class output_validator; 
  task output_validator_t();
    forever @(posedge clk or negedge clk) begin
      
      logic [LENGTH-1:0] expected [$];
      logic [LENGTH-1:0] actual[$];
      #1;
      expected.push_front(i[s]);
      actual.push_front(y);
      
      if(rst) begin
        if(actual.pop_front()!=0) begin 
          $error("Incorrect Output...");
        end
        $display("Reset is not Active ");
      end
      else if(actual.pop_front()==expected.pop_front())begin
        $display("Test Passed ...");
      end
      else begin
        $error("Incorrect Output");
      end
    end
  endtask
endclass