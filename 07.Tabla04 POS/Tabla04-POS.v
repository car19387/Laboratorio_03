  module Tabla04-POS();

  reg A, B, C; D;
  wire orA, orB, orC, orD, orE, orF, orG, orI, notA, notB, notC, notD, out;

  or 1(orA, notA, notB, notC, notD);
  or 2(orB, A, notB, C, D);
  or 3(orC, A, notB, C, notD);
  or 4(orD, notA, B, C, notD);
  or 5(orE, notA, B, notC, notD);
  or 6(orF, notA, notB, C, D);
  or 7(orG, notA, notB, C, notD);
  or 8(orH, notA, notB, notC, D);
  or 9(orI, notA, notB, notC, notD);
  and 1(out, orA, orB, orC, orD, orE, orH, orI);
  not 1(notA, A);
  not 2(notB, B);
  not 3(notC, C);
  not 4(notD, D);

  initial begin
    $display("A B C D | Y");

    $monitor("%b %b %b %b | %b", A, B, C, D, out);
       A = 0; B = 0; C = 0; D= 0;
    #1 A = 0; B = 0; C = 0; D= 1;
    #1 A = 0; B = 0; C = 1; D= 0;
    #1 A = 0; B = 0; C = 1; D= 1;
    #1 A = 0; B = 1; C = 0; D= 0;
    #1 A = 0; B = 1; C = 0; D= 1;
    #1 A = 0; B = 1; C = 1; D= 0;
    #1 A = 0; B = 1; C = 1; D= 1;
    #1 A = 1; B = 0; C = 0; D= 0;
    #1 A = 1; B = 0; C = 0; D= 1;
    #1 A = 1; B = 0; C = 1; D= 0;
    #1 A = 1; B = 0; C = 1; D= 1;
    #1 A = 1; B = 1; C = 0; D= 0;
    #1 A = 1; B = 1; C = 0; D= 1;
    #1 A = 1; B = 1; C = 1; D= 0;
    #1 A = 1; B = 1; C = 1; D= 1;
    #1 $finish;
  end

endmodule  //Revisado
