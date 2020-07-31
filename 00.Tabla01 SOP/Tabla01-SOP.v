  module Tabla01-SOP();

  reg A, B, C;
  wire or01, or02, or03, or04, or05, notA, notB, notC, out;

  or 1(or01, notA, notB, notC);
  or 2(or02, notA, B, notC);
  or 3(or03, A, notB, notC);
  or 4(or04, A, notB, C);
  or 5(or05, A, B, C);
  and 1(out, or01, or02, or03, or04, or05);
  not 1(notA, A);
  not 2(notB, B);
  not 3(notC, C);

  initial begin
    $display("A B C | Y");

    $monitor("%b %b %b | %b", A, B, C, out);
       A = 0; B = 0; C= 0;
    #1 A = 0; B = 0; C= 1;
    #1 A = 0; B = 1; C= 0;
    #1 A = 0; B = 1; C= 1;
    #1 A = 1; B = 0; C= 0;
    #1 A = 1; B = 0; C= 1;
    #1 A = 1; B = 1; C= 0;
    #1 A = 1; B = 1; C= 1;
    #1 $finish;
  end



endmodule
