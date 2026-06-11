module CMOS_NAND(Y, A, B);

input A, B;
output Y;

supply1 VDD;
supply0 GND;

wire w;

// PMOS pull-up network (parallel)
pmos P1(Y, VDD, A);
pmos P2(Y, VDD, B);

// NMOS pull-down network (series)
nmos N1(Y, w, A);
nmos N2(w, GND, B);

endmodule