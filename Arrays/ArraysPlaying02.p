program ArraysPlaying02;

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

thirdOfNrElements := nrElements div 3;

for i := 1 to nrElements do
  begin
  read(firstArray[i]);
  end;

for i := 1 to thirdOfNrElements do
  begin
  secondArray[i] := firstArray[i] + firstArray[i + thirdOfNrElements] + firstArray[i + 2 * thirdOfNrElements]
  end;


writeln('Here is the first array');

for i := 1 to nrElements do
  begin
  writeln('#[', i, '] = ', firstArray[i]);
  end;

writeln;

writeln('Here is the first array');

for i := 1 to thirdOfNrElements do
  begin
  writeln('#[', i, '] = ', secondArray[i]);
  end;

writeln;


end.