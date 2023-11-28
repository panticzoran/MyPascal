program BiggestSubsetRandomized;
uses crt;

(* Perfect number, a positive integer that is equal to the sum of its proper divisors.
The smallest perfect number is 6, which is the sum of 1, 2, and 3. 
Other perfect numbers are 28, 496, and 8128. *)

var
checkUntil , i : Longint;


function isProperDivisor(nr1, divisor : Longint) : boolean;
begin
  isProperDivisor := ((nr1 mod divisor) = 0);
end;

function isPerfect(nr2 : Longint) : boolean;
var
  sumDivisors , j : integer;
begin
  sumDivisors := 0;
  for j := 1 to nr2-1 do
  begin
    if isProperDivisor(nr2, j) then sumDivisors := sumDivisors + j;
  end;
  isPerfect := (sumDivisors = nr2);
end;


begin

checkUntil := 10000;
writeln('Numbers to be checked: ' , checkUntil);

for i := 1 to checkUntil do
begin
  if isPerfect(i) then writeln('Found: ', i)
end;

writeln('Done.')

end.