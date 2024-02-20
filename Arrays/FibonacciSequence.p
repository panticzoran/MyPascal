program FibonacciSequence;

(* Establishing Fibonacci sequence and playing a bit with it *)

uses crt;

(* Generates an array filled with random numbers *)

var
i, nrElements : Longint;
element, fibonacciArray, differenceArray : array [1..100000] of integer;

begin

randomize;

write('How many elements the Fibonacci array should have: ');
read(nrElements);

(* Generates Fibonacci array *)
fibonacciArray[1] := 1;
fibonacciArray[2] := 1;
for i := 3 to nrElements do
  begin
  fibonacciArray[i] :=  fibonacciArray[i - 1] + fibonacciArray[i - 2] (* generate Fibonacci array *)
  end;

for i := 1 to nrElements do
  begin
  element[i] := round(Random * 99 + 1); (* generate array with random numbers from 1 to 100 *)
  end;

for i := 1 to nrElements do
  begin
  differenceArray[i] := fibonacciArray[i] - element[i]; (* generate array that contains differences between the two above arrays *)
  end;

writeln('Here are the three arrays - Fibonacci, random and their difference');
for i := 1 to nrElements do
  begin
  writeln('#[', i, '] = ', fibonacciArray[i], ' ', element[i], ' ', differenceArray[i]);
  end;

writeln;


end.