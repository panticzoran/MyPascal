program BiggestSubsetRandomized;
uses crt;

(* Perfect number, a positive integer that is equal to the sum of its proper divisors.
The smallest perfect number is 6, which is the sum of 1, 2, and 3. 
Other perfect numbers are 28, 496, and 8128. *)

var
checkUntil , i : Longint;


function isProperDivisor(nr, divisor : Longint) : boolean;
begin
  isProperDivisor := (nr mod divisor = 0);
end;

function isPerfect(nr : Longint) : boolean;
var
  sumDivisors , j : integer;
begin
  sumDivisors := 1;
  for j := 2 to nr do
  begin
    if isProperDivisor(nr, j) then sumDivisors := sumDivisors +1;
  end;
  isPerfect := (sumDivisors = nr);
end;


begin

checkUntil := 100000;
writeln('Numbers to be checked: ' , checkUntil);

for i := 1 to checkUntil do
begin
  if isPerfect(i) then writeln(i)
end;

end.