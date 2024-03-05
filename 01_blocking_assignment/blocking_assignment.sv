//Race around condition-The race-around condition can occur as an order of execution is unknown if both statements are scheduled at the same simulation time.
//-----------------------------------------------------------
module blocking;
  reg [3:0] data = 4'h5;
  reg [3:0] y = 4'h3;
    
  initial begin // first initial block
    y = data;
    $display("1st block: data = %0h and y = %0h", data, y);
  end
  
  initial begin // second initial block
    data = y;
    $display("2nd block: data = %0h and y = %0h", data, y);
  end  
endmodule
//------------------------------------------------------------------------

// module blocking;
//   reg [3:0] data = 4'h5;
//   reg [3:0] y = 4'h3;
    
//   initial begin // first initial block
//    data = y; 
//     $display("1st block: data = %0h and y = %0h", data, y);
//   end
  
//   initial begin // second initial block
//     y = data;
//     $display("2nd block: data = %0h and y = %0h", data, y);
//   end  
// endmodule

//-------------------------------------------------------------------------