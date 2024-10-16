`include "Maherani.Borna.401243079.problem2.Module.v"
module bitAdder_tb;
    reg signed [7:0] A, B;
    wire signed [7:0] sum;
    wire C_out;
    bitAdder f (A, B, 1'b0, sum, C_out);
    initial begin
        #10 A=50; B=10;
        #10 $display("(%d) + (%d) = %d , C_Out = %d", A, B, sum, C_out);

        #10 A=50; B=100;
        #10 $display("(%d) + (%d) = %d , C_Out = %d", A, B, sum, C_out);

        #10 A=-5; B=-20;
        #10 $display("(%d) + (%d) = %d , C_Out = %d", A, B, sum, C_out);

        #10 A=-50; B=-100;
        #10 $display("(%d) + (%d) = %d , C_Out = %d", A, B, sum, C_out);

        #10 A=127; B=-100;
        #10 $display("(%d) + (%d) = %d , C_Out = %d", A, B, sum, C_out);

    end
endmodule