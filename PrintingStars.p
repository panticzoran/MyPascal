program PrintingStars;
uses crt;

(* Writes lines with stars *)

var
column , row , height , width : Longint;

begin

height := 10000;
randomize;

for row := 1 to height do
  begin
  width := round(Random * 100 + 1);
  for column := 1 to width do 
    begin
    write('*');
    end;
  writeln;
  end;


end.