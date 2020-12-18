module Controlador_MIN(
    input [5:0] MIN,
    input [5:0] AMIN,
    input CLK,
    input ALARM,
    //Digito Izquierda
    output reg A3,
    output reg B3,
    output reg C3,
    output reg D3,
    output reg E3,
    output reg F3,
    output reg G3,
    output reg DP3,
    //Digito Derecho
    output reg A4,
    output reg B4,
    output reg C4,
    output reg D4,
    output reg E4,
    output reg F4,
    output reg G4,
    output reg DP4
);
initial begin
    //Izquierda
    A3=0;
    B3=0;
    C3=0;
    D3=0;
    E3=0;
    F3=0;
    G3=0;
    DP3=0;
    //Derecha
    A4=0;
    B4=0;
    C4=0;
    D4=0;
    E4=0;
    F4=0;
    G4=0;
    DP4=1;
end

    reg[5:0] numero;

always @(posedge CLK)
begin
    if(ALARM)
    begin
        numero<=AMIN;
    end
    else
    begin
        numero<=MIN;
    end
 case(numero)
 0:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=0;
 end
 1:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 2:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=0;
    D4<=1;
    E4<=1;
    F4<=0;
    G4<=1;
 end
 3:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=0;
    G4<=1;
 end
 4:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 5:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 6:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 7:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 8:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 9:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 10:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=0;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=0;
 end
 11:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=0;
    G3<=0;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 12:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=0;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=0;
    D4<=1;
    E4<=1;
    F4<=0;
    G4<=1;
 end
 13:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=0;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=0;
    G4<=1;
 end
 14:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=0;
    G3<=0;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 15:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=0;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 16:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=0;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 17:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=0;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 18:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=0;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 19:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=0;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 20:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=0;
    D3<=1;
    E3<=1;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=0;
 end
 21:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=0;
    D3<=1;
    E3<=1;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 22:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=0;
    D3<=1;
    E3<=1;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=0;
    D4<=1;
    E4<=1;
    F4<=0;
    G4<=1;
 end
 23:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=0;
    D3<=1;
    E3<=1;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=0;
    G4<=1;
 end
 24:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=0;
    D3<=1;
    E3<=1;
    F3<=0;
    G3<=1;  
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 25:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=0;
    D3<=1;
    E3<=1;
    F3<=0;
    G3<=1;  
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 26:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=0;
    D3<=1;
    E3<=1;
    F3<=0;
    G3<=1;  
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 27:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=0;
    D3<=1;
    E3<=1;
    F3<=0;
    G3<=1;  
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;   
 end
 28:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=0;
    D3<=1;
    E3<=1;
    F3<=0;
    G3<=1;  
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 29:
 begin
     
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=0;
    D3<=1;
    E3<=1;
    F3<=0;
    G3<=1; 
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1; 
 end
 30:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=0;
 end
 31:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 32:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=0;
    D4<=1;
    E4<=1;
    F4<=0;
    G4<=1;
 end
 33:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=0;
    G4<=1;   
 end
 34:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 35:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 36:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 37:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 38:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 39:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=0;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 40:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=0;
 end
 41:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 42:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=0;
    D4<=1;
    E4<=1;
    F4<=0;
    G4<=1;
 end
 43:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=0;
    G4<=1;
 end
 44:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 45:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 46:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 47:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 48:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 49:
 begin
    //Izquierda
    A3<=0;
    B3<=1;
    C3<=1;
    D3<=0;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 50:
 begin
    //Izquierda
    A3<=1;
    B3<=0;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=0;
 end
 51:
 begin
    //Izquierda
    A3<=1;
    B3<=0;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 52:
 begin
    //Izquierda
    A3<=1;
    B3<=0;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=0;
    D4<=1;
    E4<=1;
    F4<=0;
    G4<=1;
 end
 53:
 begin
    //Izquierda
    A3<=1;
    B3<=0;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=0;
    G4<=1;
 end
 54:
 begin
    //Izquierda
    A3<=1;
    B3<=0;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=0;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 55:
 begin
    //Izquierda
    A3<=1;
    B3<=0;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
 end
 56:
 begin
    //Izquierda
    A3<=1;
    B3<=0;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=0;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 57:
 begin
    //Izquierda
    A3<=1;
    B3<=0;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=1;
    G3<=1; 
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=0;
    E4<=0;
    F4<=0;
    G4<=0;
 end
 58:
 begin
    //Izquierda
    A3<=1;
    B3<=0;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=1;
 end
 59:
begin
    //Izquierda
    A3<=1;
    B3<=0;
    C3<=1;
    D3<=1;
    E3<=0;
    F3<=1;
    G3<=1;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=0;
    F4<=1;
    G4<=1;
end
 default:
 begin
    //Izquierda
    A3<=1;
    B3<=1;
    C3<=1;
    D3<=1;
    E3<=1;
    F3<=1;
    G3<=0;
    //Derecha
    A4<=1;
    B4<=1;
    C4<=1;
    D4<=1;
    E4<=1;
    F4<=1;
    G4<=0;
 end
endcase
end
endmodule
