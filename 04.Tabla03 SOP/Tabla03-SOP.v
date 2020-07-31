  module Tabla03-SOP();

  reg A, B, C, D;
  wire andA, andB, andC, andD, andE, andF, andG notA, notB, notC, notD, out;

  or 1(out, andA, andB, andC, andD, andE, andF, andG);
  and 1(andA, notA, notB, notC, notD);
  and 2(andB, notA, notB, notC, D);
  and 3(andC, notA, notB, C, notD);
  and 4(andD, notA, notB, C, D);
  and 5(andE, A, notB, notC, notD);
  and 6(andF, A, notB, C, notD);
  and 7(andG, A, B, C, notD);
  not 1(notA, A);
  not 2(notB, B);
  not 3(notC, C);
  not 3(notD, D);


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
