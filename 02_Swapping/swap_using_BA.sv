//----------------------BA------------------------------
module swap_blocking();
 int a,b,temp_a;
  initial begin
  a=3; b=7;
     $display("Before swap:a=%0d,b=%0d",a,b);
  temp_a=a;
  a=b;
  b=temp_a;
  // a=a+b;
  // b=a-b;
  // a=a-b;


  #5 $display("after swap:a=%0d,b=%0d",a,b); 
  end
endmodule  
