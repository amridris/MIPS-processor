`timescale 1ns / 1ps


module D_Stage_Reg(
    input        clk, rst,
    input [31:0] instrF,
    input [31:0] pc_plus4F,
    
    output reg [31:0] instrD,
    output reg [31:0] pc_plus4D
    );
    
    always @ (negedge clk, posedge rst) begin
        if (rst) begin
            instrD    <= 0;
            pc_plus4D <= 0;
        end
        else begin
            instrD    <= instrF;
            pc_plus4D <= pc_plus4F;
        end
    end
    
endmodule
