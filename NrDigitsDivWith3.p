program NrDigitsDivWith3;
uses crt;

var 
num, leftDigit, rightDigit, nrDigitsBy3 : Longint;


(* Prints how many digits in a numnber are divisible by 3 *)

begin

write('Enter the number: ');
read(num);
write('The number ', num, ' has ');

rightDigit := num mod 10;
leftDigit := num div 10;
nrDigitsBy3 := 0;

while leftDigit > 0 do
	begin
	if (rightDigit mod 3) = 0 then nrDigitsBy3 := nrDigitsBy3 + 1;
	num := leftDigit;
	rightDigit := num mod 10;
	leftDigit := num div 10;
 	end;
if (rightDigit mod 3) = 0 then nrDigitsBy3 := nrDigitsBy3 + 1;

write(nrDigitsBy3, ' digits divisible by 3.');

end.