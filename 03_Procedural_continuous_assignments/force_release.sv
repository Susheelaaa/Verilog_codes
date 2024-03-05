module force_release;
  reg [4:0]d1;
  wire [4:0]d2;
  
  assign d2=5;
  initial begin
    $monitor("time=%0t d1=%0d d2=%0d",$time,d1,d2);
    d1=6;
    #25 d1=15;
  end
  initial begin
    #5 $display("applying force: d1=%0d d2=%0d",$time,d1,d2);
    force d1=10;
    force d2=11;

    #5  release d1;
        release d2;
    $display("time=%0t After release: d1=%0d d2=%0d",$time,d1,d2);  
  end
  
endmodule