program BiggestSumTwoNeighbouringElements;
uses crt;

(* In array of N elements find the max sum of two neighbouring elements *)

var
element , previousElement , sumOfTwo , n , i : Longint;

begin

write('Enter the number of elements: ');
read(n);

write('Element nr.1 : ');
read(element);
previousElement := element;
write('Element nr.2 : ');
read(element);
sumOfTwo := element + previousElement;

for i := 3 to n do
  begin
  write('Element nr.', i , ': ');
  read(element);
  if (element + previousElement) > sumOfTwo then sumOfTwo := element + previousElement;
  previousElement := element;
  end;

write('The max sum of two neighbouring elements is: ', SumOfTwo)

end.