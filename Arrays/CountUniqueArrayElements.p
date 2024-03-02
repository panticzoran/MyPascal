program CountUniqueArrayElements;

(* Counting unique elements in an array, showing the number of their occurence *)

uses crt;

var
i, j, nrElements, elementNr : Longint;
theArray, uniqueElements, nrUniqueElements : array [1..100000] of integer;
isFound : Boolean;

begin

randomize;

write('How many elements the array should have: ');
read(nrElements);

for i := 1 to nrElements do
  begin
  theArray[i] := round(Random * 4 + 1); (* generate random numbers from 1 to 5 *)
  nrUniqueElements[i] := 0; (* zeroing the array having the count of the unique elements *)
  end;

writeln('Here is the array generated');
for i := 1 to nrElements do
  begin
  writeln('Element[', i, '] = ', theArray[i]);
  end;

writeln;

uniqueElements[1] := theArray[1];
elementNr := 1;

for i := 2 to nrElements do
  begin
  isFound := false;

  for j := 1 to elementNr do
    begin
      if theArray[i] = uniqueElements[j] then 
      begin
        nrUniqueElements[j] := nrUniqueElements[j] + 1;
        isFound := true;
      end;
    end;

  if isFound = false then
    begin
      elementNr := elementNr + 1;
      uniqueElements[elementNr] := theArray[i];
      nrUniqueElements[j] := nrUniqueElements[j] + 1;
    end;
  
  end;

nrUniqueElements[j] := nrUniqueElements[j] + 1;

writeln('Here is the unique elements and their number of occurence:');

for i := 1 to elementNr do
  begin
  writeln('Element[', i, '] = ', uniqueElements[i], ' occurs ', nrUniqueElements[i], ' times');
  end;


writeln;

end.