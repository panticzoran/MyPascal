program PlayingWithProcedures02;

var
   nr1, nr2, theSum : integer;

procedure summarize(x, y: integer; var tempSum: integer); 
// tempSum is a variable parameter, and that means changing its value in the procedure will propagate to the main block
// If "var" in front of tempSum is removed, the following will happen:
      // Warning: Variable "theSum" does not seem to be initialized
      //The tempSum"s value in the procedure is = 7
      //3 + 4 = 0
// This happens because tempSum is not propagated to the main block
begin
   tempSum := x + y;
   writeln('The tempSum"s value in the procedure is = ', tempSum);
   writeln();
end;

begin
   writeln();
   nr1 := 3;
   nr2 := 4;
   summarize(nr1, nr2, theSum);
   writeln(nr1, ' + ', nr2, ' = ', theSum);
   //writeln('tempSum = ', tempSum);
   // uncommenting the above line will produce "Error: Identifier not found "tempSum""
end.