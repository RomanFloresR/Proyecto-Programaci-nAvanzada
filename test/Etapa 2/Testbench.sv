module tb;
  logic [2:0] Sensores;
  logic [1:0] Mot1,Mot2;
  
  Carrito uut(Sensores,Mot1,Mot2);
  
  initial begin
    $monitor("t=%0d Sensores=%b Mot1=%b Mot2=%b", $time,Sensores,Mot1,Mot2);
    
    Sensores=3'b000;
    #10 Sensores=3'b001;
    #10 Sensores=3'b010;
    #10 Sensores=3'b100;
    #10 Sensores=3'b111;
    #10 $finish;
  end
  
  initial begin
    $dumpfile("wave,vcd");
    $dumpvars(0,tb);
  end
endmodule
