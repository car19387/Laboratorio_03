  module Tabla01-SOP();

  reg A, B, C;
  wire andA, andB, andC, andD, notA, notB, notC, out;

  or 1(out, andA, andB, andC, andD);
  and 1(andA, A, B, notC);
  and 3(andB, a, notB, notC);
  and 2(andC, notA, notB, C);
  and 4(andD, notA, notB, notC);
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

endmodule //Revisado
