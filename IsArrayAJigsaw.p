program IsArrayAJigsaw;
uses crt;

(* Find out if the array is a "jigsaw" so the 1st element is smaller than 2nd, 3rd smaller than 2nd and 4th, etc *)

var 
nrEl , el , i : integer;
previousEl : integer;
isJigsaw , isBigger : boolean;

begin

write('Enter the number of elements in the array: ');
read(nrEl);

write('Element nr.1: ');
read(el);
previousEl := el;
isJigsaw := true;

for i := 2 to nrEl do
begin

  write('Element nr.', i , ': ');
  read(el);

  if (i mod 2 = 0) then
  begin
    if el < previousEl then
    begin
      isJigsaw := false;
      break;
    end;
  end
  else
  begin
    if el > previousEl then
    begin
      isJigsaw := false;
      break;
    end;
  end;
end;

if isJigsaw then write('The array is a jigsaw')
else write('The array is not a jigsaw');

end.