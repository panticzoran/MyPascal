program ArrayPlaying02;

(* More playing with arrays *)

uses crt;

var
i, nrElements, thirdOfNrElements : Longint;
firstArray, secondArray : array [1..100000] of integer;

begin

thirdOfNrElements := 1;

while thirdOfNrElements <> 0 do
  begin
  write('How many elements the array should have: ');
  read(nrElements);
  thirdOfNrElements := nrElements mod 3;
  end;

for i := 1 to nrElements do
  begin
  read(firstArray[i]);
  end;

for i := 1 to thirdOfNrElements do
  begin
  secondArray[i] := firstArray[i] + firstArray[i + thirdOfNrElements] + firstArray[i + thirdOfNrElements]
  end;


writeln('Here are the arrays');

for i := 1 to nrElements do
  begin
  writeln('#[', i, '] = ', firstArray[i])
  end;

for i := 1 to thirdOfNrElements do
  begin
  writeln('#[', i, '] = ', secondArray[i])
  end;

writeln;


end.