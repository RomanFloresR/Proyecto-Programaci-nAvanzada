module Carrito(Sensores,Mot1,Mot2);
  input [2:0] Sensores;
  output reg [1:0] Mot1,Mot2;
  
  always_comb
    begin
      case (Sensores)
        3'b001: begin
             Mot1=2'b10;
             Mot2=2'b01;
           end
        3'b010: begin
             Mot1=2'b10;
             Mot2=2'b10;
           end
        3'b100: begin
             Mot1=2'b01;
             Mot2=2'b10;
           end
        default: begin
             Mot1=2'b10;
             Mot2=2'b10;
           end
     endcase
    end
endmodule
