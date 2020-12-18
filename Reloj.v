module Reloj(
    input CLK,
    input [5:0]TMINUTOS,
    input [5:0]THORAS,
    input [5:0]IMINUTOS,
    input [5:0]IHORAS,
    input RESET,
    input SET_HORA,
    output reg [6:0] MILSEGUNDOS,
    output reg [5:0] SEGUNDOS,
    output reg [5:0] MINUTOS,
    output reg [5:0] HORAS,
    output reg ALARM
);

initial begin 
    MILSEGUNDOS=0;
    SEGUNDOS=0;
    MINUTOS=0;
    HORAS=0;
    ALARM=0;
end

 always @(posedge CLK)
    begin
        if(RESET)
        begin
            MILSEGUNDOS=0;
            SEGUNDOS=0;
            MINUTOS=0;
            HORAS=0;
            ALARM=0;
        end
        else if(SET_HORA)
        begin
            MINUTOS=IMINUTOS;
            HORAS=IHORAS;
            ALARM=0;
        end
    end

always @ (negedge CLK )
begin
    if(THORAS==HORAS)
    begin
        if(TMINUTOS==MINUTOS)
        begin
            ALARM<=1;
        end
        else if(TMINUTOS<MINUTOS)
        begin
            ALARM<=0;
        end
    end
    else if(THORAS<HORAS)
    begin
        ALARM<=0;
    end
    if(MILSEGUNDOS==99)
    begin
        MILSEGUNDOS=0;
        if (SEGUNDOS==59) 
        begin
            SEGUNDOS=0;
            if (MINUTOS==59) 
            begin
               MINUTOS=0;
               if (HORAS==23) 
               begin
                   HORAS=0;
               end 
               else
                begin
                    HORAS<=HORAS+1;
                end
            end
            else
            begin
                MINUTOS<=MINUTOS+1;
            end
        end
        else
        begin
            SEGUNDOS<=SEGUNDOS+1;
        end
    end
    else 
    begin
        MILSEGUNDOS<=MILSEGUNDOS+1;
    end
end
endmodule  