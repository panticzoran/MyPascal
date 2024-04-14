program MatrixSumOfColumns;

(* Simple example with 2 dimensional arrays = matrices *)

uses crt;

(* Generates a matrix filled with random numbers *)

var
i, j, columnSum, nrRows, nrColumns : Longint;
elementOriginal : array [1..100,1..100] of integer; (*Take care that you do not make the array of big size*)
elementNew : array [1..100,1..100] of integer;

begin

randomize;

write('How many rows the matrix should have: ');
read(nrRows);
write('How many columns the array should have: ');
read(nrColumns);
writeln;

(* Populating both matrices *)
for i := 1 to nrRows do
begin
  for j := 1 to nrColumns do
  begin
  elementOriginal[i,j] := round(Random * 8 + 1); (* generate random numbers from 1 to 9 *)
  elementNew[i,j] := elementOriginal[i,j]
  end;
end;

writeln;
writeln('Here is the matrix generated');
for i := 1 to nrRows do
begin
  for j := 1 to nrColumns do
  begin
  write(elementOriginal[i,j], ' ');
  end;
  writeln;
end;

(* Calculating sum of the columns in the new matrix *)
for i := 1 to nrColumns do
begin
  columnSum := 0;
  for j := 1 to nrRows do
  begin
  columnSum := columnSum + elementNew[j,i];
  end;
  elementNew[nrRows+1,i] := columnSum;
end;


writeln;
writeln('Here is the new matrix, with the last row being sums of the columns');
for i := 1 to nrRows do
begin
  for j := 1 to nrColumns do
  begin
  write(' ', elementNew[i,j], ' ');
  end;
  writeln;
end;
for j := 1 to nrColumns do
begin
write(elementNew[nrRows+1,j], ' ');
end;

writeln;

end.