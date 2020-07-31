  module Tabla01-SOP();

  reg A, B, C;
  wire andA, andB, andC, andD, andE, notA, notB, notC, out;

  or 1(out, andA, andB, andC, andD, andE);
  and 1(andA, notA, notB, notC);
  and 2(andB, notA, B, notC);
  and 3(andC, A, notB, notC);
  and 4(andD, A, notB, C);
  and 5(andE, A, B, C);
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
