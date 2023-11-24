program MaxNumberOfNeighbouringPairNrsRandomized;
uses crt;

(* In array of N elements find the maximal number of sequential pair numbers *)

var
element , n , i : Longint;
nrPairNrs , maxNrPairNrs , prevElement , firstPair : Longint;

begin

randomize;
element := 0;

n := 40;
writeln('The number of elements in the array: ' , n);
writeln('The elements of the array are: ');
element := round(Random * 100 + 1);
writeln('1: ' , element);
prevElement := element;
element := round(Random * 100 + 1);
writeln('2: ' , element);
nrPairNrs := 0;
maxNrPairNrs := 0;
firstPair := 0;

if ((element mod 2 = 0) and (prevElement mod 2 = 0)) then
  begin
  nrPairNrs := 1;
  maxNrPairNrs := 1;
  firstPair := 1;
  end;
if (element mod 2 = 0) then
  begin
  nrPairNrs := 1;
  firstPair := 2;
  end;
prevElement := element;


for i := 3 to n do
  begin
  element := round(Random * 100 + 1);
  writeln(i , ': ' , element);
  if ((element mod 2 = 0) and (prevElement mod 2 = 0)) then 
    begin
    nrPairNrs := nrPairNrs + 1;
    if nrPairNrs >= maxNrPairNrs then 
      begin
      maxNrPairNrs := nrPairNrs + 1;
      firstPair := i - maxNrPairNrs + 1;
      end;
    end
  else
    begin
    nrPairNrs := 0;
    end;
  prevElement := element;
  end;

writeln;
write('The maximal number of sequential pair numbers is: ', maxNrPairNrs , ' at the position ' , firstPair);

end.