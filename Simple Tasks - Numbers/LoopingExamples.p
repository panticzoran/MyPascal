program LoopingExamples;
uses crt;

(* Simple examples for while-do, repeat-until and for-do *)

var
i , j , k : Longint;
r : real;


begin

i := 0;
j := 10;

while i < 10 do
  begin
  writeln('i=', i);
  i := i + 1;
  end;

writeln;

repeat
writeln('j=', j);
j := j - 1;
until j <= 0;

writeln;

for k := 5 to 10 do
  begin
  writeln('k=', k);
  end;

writeln;

(*to try "/" with two integers, instead of "div" *)
writeln(4/3);
k := 4 div 3;
writeln(k);
r := 4 / 3;
writeln(r);

end.