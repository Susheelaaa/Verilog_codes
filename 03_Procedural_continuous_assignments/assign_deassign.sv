module assign_deassign;
  reg [4:0]d;
  initial begin
    $monitor("time=%0t d=%0d",$time,d);
    d=5;
    #25 d=15;
  end
  initial begin
    #5 assign d=10;
    #5 deassign d;
    $display("time=%0t After Deassign: d=%0d",$time,d);
  end
  
endmodule