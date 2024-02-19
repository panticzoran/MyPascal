program ArraysPlaying01;
uses crt;

(* Simple examples with arrays *)

var
i, nrElements : Longint;
element : array [1..100000] of integer;

begin

randomize;

write('How many elements the array should have: ');
read(nrElements);

for i := 1 to nrElements do
  begin
  element[i] := round(Random * 99 + 1); (* generate random numbers from 1 to 100 *)
  end;

for i := 1 to nrElements do
begin
writeln('Element[', i, '] = ', element[i] );
end;

writeln;

end.