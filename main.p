program FindPositionOf1stLastMaxElements;
uses crt;

(* In the array of N numbers, find the biggest element, and print it's first and last position *)

var 
nrEl , el , i , maxEl, pos1st, posLast : integer;

begin

write('Enter the number of elements: ');
read(nrEl);

write('Element nr.1: ');
read(el);
maxEl := el;
pos1st := 1;
posLast := 1;

for i := 2 to nrEl do
begin

  write('Element nr.', i , ': ');
  read(el);

  if el > maxEl then
  begin
    maxEl := el;
    pos1st := i;
  end;

  if el = maxEl then
  begin
    posLast := i;
  end;
  
end;

write('The first occurence of the biggest element ', maxEl, ' is ', pos1st, ' and the last occurence is ', posLast);

end.