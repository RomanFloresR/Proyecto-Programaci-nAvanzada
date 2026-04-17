module Carrito (
  input [2:0] Sensores,          //Input para 3 sensores digitales
  output reg [1:0] Mot1,
  output reg [1:0] Mot2         //Output para shiled LD27
);
  
  always @ (Sensores) begin     //Siempre que la variable "Sensores" cambie
      case (Sensores)
        3'b001: begin           //Si se enciende solo el sensor derecho   
          			Mot1 = 2'b10;   //Hacia delante Rueda izquierda 
          			Mot2 = 2'b01;   //Hacia atras rueda derecha
        			end
        3'b010: begin           //Si solo esta encendico el sensor central
          			Mot1 = 2'b10;
          			Mot2 = 2'b10;
        			end
        3'b100: begin           //Si solo esta encendido el sensor izquierdo
          			Mot1 = 2'b01;
          			Mot2 = 2'b10;
        			end
        default: begin          //En cualquier otro caso detenerse
          			Mot1 = 2'b11;
          			Mot2 = 2'b11;
        			end
     endcase
    end
endmodule
