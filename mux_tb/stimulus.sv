
class stimulus;
  task stimulus_t();
    repeat(25) begin
      s=$urandom_range(0,DEPTH-1);
      for(int j=0;j<DEPTH;j++) begin
        i[j]=$urandom_range(0,(2**LENGTH)-1);
        
      end
      #5;
    end
    $finish;
    
  endtask
endclass















