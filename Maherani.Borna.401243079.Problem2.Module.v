module bitAdder (
    A, B, C_in, Sum, C_out
);
    input [7:0] A, B;
    input C_in;
    output [7:0] Sum;
    output C_out;
    wire [7:0] carry;

    wire w0, w1, w2;
    xor(w0, A[0], B[0]);
    xor(Sum[0], w0, C_in);
    and(w1, w0, C_in);
    and(w2, A[0], B[0]);
    or(carry[0], w1, w2);

    wire w3, w4, w5;
    xor(w3, A[1], B[1]);
    xor(Sum[1], w3, carry[0]);
    and(w4, w3, carry[0]);
    and(w5, A[1], B[1]);
    or(carry[1], w4, w5);

    wire w6, w7, w8;
    xor(w6, A[2], B[2]);
    xor(Sum[2], w6, carry[1]);
    and(w7, w6, carry[1]);
    and(w8, A[2], B[2]);
    or(carry[2], w7, w8);

    wire w9, w10, w11;
    xor(w9, A[3], B[3]);
    xor(Sum[3], w9, carry[2]);
    and(w10, w9, carry[2]);
    and(w11, A[3], B[3]);
    or(carry[3], w10, w11);

    wire w12, w13, w14;
    xor(w12, A[4], B[4]);
    xor(Sum[4], w12, carry[3]);
    and(w13, w12, carry[3]);
    and(w14, A[4], B[4]);
    or(carry[4], w13, w14);

    wire w15, w16, w17;
    xor(w15, A[5], B[5]);
    xor(Sum[5], w15, carry[4]);
    and(w16, w15, carry[4]);
    and(w17, A[5], B[5]);
    or(carry[5], w16, w17);

    wire w18, w19, w20;
    xor(w18, A[6], B[6]);
    xor(Sum[6], w18, carry[5]);
    and(w19, w18, carry[5]);
    and(w20, A[6], B[6]);
    or(carry[6], w19, w20);

    wire w21, w22, w23;
    xor(w21, A[7], B[7]);
    xor(Sum[7], w21, carry[6]);
    and(w22, w21, carry[6]);
    and(w23, A[7], B[7]);
    or(carry[7], w22, w23);

    xor(C_out, carry[7], carry[6]);
endmodule