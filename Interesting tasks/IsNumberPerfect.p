program IsNumberPerfect;
uses crt;

(* Perfect number, a positive integer that is equal to the sum of its proper divisors.
The smallest perfect number is 6, which is the sum of 1, 2, and 3. 
Other perfect numbers are 28, 496, and 8128. *)

var
checkUntil , i , position: Longint;


function isProperDivisor(nr, divisor : Longint) : boolean;
begin
  isProperDivisor := nr mod divisor = 0;
end;


function isPerfect(nr : Longint) : boolean;
var
  sumDivisors , j : integer;
begin
  sumDivisors := 0;
  for j := 1 to nr-1 do
  begin
    if isProperDivisor(nr, j) then sumDivisors := sumDivisors + j;
  end;
  isPerfect := sumDivisors = nr;
end;


begin

checkUntil := 50000000;
position := 8;
gotoXY(1,position);
writeln('Numbers to be checked: ' , checkUntil);
position := position + 2;

for i := 1 to checkUntil do
begin
  gotoXY(1,position);
  write('Checking: ', i);
  if isPerfect(i) then 
  begin
    gotoXY(1,position);
    write('Found: ', i , '          ');
    position := position + 1;
  end;
end;

position := position + 1;
gotoXY(1,position);
writeln('Done.')

end.