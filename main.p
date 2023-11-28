



program BiggestSubset;
uses crt;

(* In array of N elements find the biggest subset of repeating numbers, and print what numbert it is, what is it's position and how big is the subset *)

var
element , n , i : Longint;
prevElement , index1stElement , biggestSize, theElement : Longint;
theIndex1stElement , theBiggestSize, theFinalElement : Longint;

begin

write('Enter the number of elements: ');
read(n);

write('Element nr.1 : ');
read(element);
prevElement := element;
theElement := element;
theFinalElement := element;
index1stElement := 1;
theIndex1stElement := 1;
biggestSize := 1;
theBiggestSize := 1;


for i := 2 to n do
begin
  write('Element nr.', i , ': ');
  read(element);

  if element = prevElement
  then
    begin
    theElement := element;
    biggestSize := biggestSize + 1;
    index1stElement := i - biggestSize;
    end;


  if biggestSize >= theBiggestSize
  then
    begin
    theBiggestSize := biggestSize;
    theFinalElement := theElement;
    theIndex1stElement := index1stElement;
    end;
end;
  

writeln;
write('The biggest subset is having  ', theBiggestSize , ' elements ', theFinalElement , ' at the position ' , theIndex1stElement);

end.