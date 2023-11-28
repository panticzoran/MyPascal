program BiggestSubsetRandomized;
uses crt;

(* In array of N elements find the biggest subset of repeating numbers, and print what numbert it is, what is it's position and how big is the subset *)

var
element , n , i : Longint;
prevElement , index1stElement , biggestSize, theElement : Longint;
theIndex1stElement , theBiggestSize, theFinalElement : Longint;

begin

randomize;
n := 40;
writeln('The number of elements in the array: ' , n);

writeln('The elements of the array are: ');
element := round(Random * 4 + 1);
writeln('1: ' , element);

theElement := element;
theFinalElement := element;

index1stElement := 1;
theIndex1stElement := 1;

biggestSize := 1;
theBiggestSize := 1;


for i := 2 to n do
begin

  prevElement := element;
  element := round(Random * 4 + 1);
  writeln(i , ': ' , element);

  if element = prevElement then
    begin
      theElement := element;
      biggestSize := biggestSize + 1;
      index1stElement := i - biggestSize + 1;
    end
  else
    begin
      biggestSize := 1;
    end;

  if biggestSize >= theBiggestSize then
    begin
      theFinalElement := prevElement;
      theBiggestSize := biggestSize;
      theIndex1stElement := index1stElement;
    end;
end;

writeln;
write('The biggest subset is having ', theBiggestSize , ' elements "', theFinalElement , '" at the position ' , theIndex1stElement);

end.