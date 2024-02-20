program ArraysPlaying01;

(* Simple examples with arrays *)

uses crt;

(* Generates an array filled with random numbers *)

var
i, nrElements, elementOut : Longint;
element : array [1..100000] of integer;

begin

randomize;

write('How many elements the array should have: ');
read(nrElements);

for i := 1 to nrElements do
  begin
  element[i] := round(Random * 99 + 1); (* generate random numbers from 1 to 100 *)
  end;

writeln('Here is the array generated');
for i := 1 to nrElements do
  begin
  writeln('Element[', i, '] = ', element[i] );
  end;

writeln;

(* Throws out an element from the above array *)

write('Index of the element to be thrown out: ');
read(elementOut);

for i := (elementOut + 1) to nrElements do
  begin
  element[i-1] := element[i]
  end;

writeln('Here is the array without that element');
  for i := 1 to (nrElements - 1) do
  begin
  writeln('Element[', i, '] = ', element[i] );
  end;

end.