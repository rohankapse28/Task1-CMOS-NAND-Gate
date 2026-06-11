module tb;

reg A, B;
wire Y;

CMOS_NAND uut (
    .Y(Y),
    .A(A),
    .B(B)
);

initial begin
    $display("A B Y");

    A=0; B=0; #10;
    $display("%b %b %b", A, B, Y);

    A=0; B=1; #10;
    $display("%b %b %b", A, B, Y);

    A=1; B=0; #10;
    $display("%b %b %b", A, B, Y);

    A=1; B=1; #10;
    $display("%b %b %b", A, B, Y);

    $finish;
end

endmodule