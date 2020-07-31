  module Tabla01-POS();

  reg A, B, C;
  wire orA, orB, orC, orD, orE, notA, notB, notC, out;

  or 1(orA, notA, notB, notC);
  or 2(orB, notA, B, notC);
  or 3(orC, A, notB, notC);
  or 4(orD, A, notB, C);
  or 5(orE, A, B, C);
  and 1(out, orA, orB, orC, orD, orE);
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
