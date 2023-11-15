program PrintNrReversed;
uses crt;

var 
num, leftDigit, rightDigit : integer;


(* Prints the number's digits in reverse order *)

begin


write('Enter the number: ');
read(num);

write('The number ', num, ' with reversed digits is: ');

rightDigit := num mod 10;
leftDigit := num div 10;

while leftDigit > 0 do
	begin
	write(rightDigit);
	num := leftDigit;
	rightDigit := num mod 10;
	leftDigit := num div 10;
 	end;
write(rightDigit);
end.