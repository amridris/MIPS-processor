`timescale 1ns / 1ps



module mult_inf #(parameter SIZE = 32)(

    input wire [SIZE - 1:0] a, b,
    output reg [2*SIZE - 1:0] out

    );
    
    always @ (a, b) begin
        out <= a * b;
    end
endmodule
