program MaxNumberOfNeighbouringPairNrs;
uses crt;

(* In array of N elements find the maximal number of sequential pair numbers *)

var
element , n , i : Longint;
nrPairNrs , maxNrPairNrs , prevElement , firstPair : Longint;

begin

write('Enter the number of elements: ');
read(n);

write('Element nr.1: ');
read(element);
prevElement := element;
write('Element nr.2: ');
read(element);
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
  write('Element nr.', i , ': ');
  read(element);
  if ((element mod 2 = 0) and (prevElement mod 2 = 0)) then 
    begin
    nrPairNrs := nrPairNrs + 1;
    writeln('Both are pair - Nr pair nrs: ', nrPairNrs , ' , max nr pair nrs:  ' , maxNrPairNrs);
    if nrPairNrs >= maxNrPairNrs then 
      begin
      maxNrPairNrs := nrPairNrs + 1;
      firstPair := i - maxNrPairNrs + 1;
      end;
    end
  else
    begin
    nrPairNrs := 0;
    writeln('One is impair - Nr pair nrs: ', nrPairNrs , ' , max nr pair nrs:  ' , maxNrPairNrs);
    end;
  prevElement := element;
  end;

write('The maximal number of sequential pair numbers is: ', maxNrPairNrs , ' at the position ' , firstPair);

end.