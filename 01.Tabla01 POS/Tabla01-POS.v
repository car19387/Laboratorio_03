  module Tabla01-POS();

  reg A, B, C;
  wire orA, orB, orC, orD, notA, notB, notC, out;

  or 1(orA, A, B, notC);
  or 2(orB, A, notB, notC);
  or 3(orC, notA, notB, C);
  or 4(orD, notA, notB, notC);
  and 1(out, orA, orB, orC, orD);
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
