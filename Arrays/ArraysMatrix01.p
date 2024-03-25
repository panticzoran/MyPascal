program ArraysMatrix01;

(* Simple examples with 2 dimensional arrays = matrices *)

uses crt;

(* Generates a matrix filled with random numbers *)

var
i, j, nrRows, nrColumns : Longint;
element : array [1..1000,1..1000] of integer; (*Take care that you do not make the array of big size*)

begin

randomize;

write('How many rows the matrix should have: ');
read(nrRows);
write('How many columns the array should have: ');
read(nrColumns);
writeln;

for i := 1 to nrColumns do
begin
  for j := 1 to nrRows do
  begin
  element[i,j] := round(Random * 89 + 10); (* generate random numbers from 10 to 99 *)
  end;
end;

writeln('Here is the matrix generated');
writeln;

for i := 1 to nrColumns do
begin
  for j := 1 to nrRows do
  begin
  write(element[i,j], ' ');
  end;
  writeln;
end;

writeln;

end.

