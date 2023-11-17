program SmallestPositiveArrayElement;
uses crt;

(* Print the smalest positive array element, if no positive numbers, print "0" *)

var 
nrEl , el , i, minEl, nrPos, prevEl : integer;

begin

write('Enter the number of elements: ');
read(nrEl);
nrPos := 0;
prevEl := 0;

for i := 1 to nrEl do
	begin
	write('Element nr.', i , ': ');
	read(el);
	if (el > 0) then
 		begin
 		nrPos := nrPos + 1;
	 	if nrPos > 1 then
	 		if el < prevEl then
				prevEl := el;
				minEl := el
		end
		else
			begin
			prevEl := el;
	 		minEl := el;
			end
	end;
write('The smallest element in the entered array is: ', minEl);

end.