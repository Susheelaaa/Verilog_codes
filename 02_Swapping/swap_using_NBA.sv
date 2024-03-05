//-----------------------NBA------------------------------
module swap_nonblocking();
 int a,b;
  initial begin
  a=3; b=7;
     $display("Before swap:a=%0d,b=%0d",a,b);
  a<=b;
  b<=a;

  #5 $display("after swap:a=%0d,b=%0d",a,b); 
  end
endmodule  
