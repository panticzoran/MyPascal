program SmallestPositiveArrayElement;
uses crt;

(* Print the smalest positive array element, if no positive numbers, print "0" *)

var 
nrEl , el , i, minEl, nrPos, prevEl : integer;

begin

write('Enter the number of elements: ');
read(nrEl);
nrPos := 0; (* number of positive numbers in the array *)
prevEl := 0; (* the previous element *)

for i := 1 to nrEl do
	begin
	write('Element nr.', i , ': ');
	read(el);
	if (el > 0) then
 		begin
 		nrPos := nrPos + 1;
	 	if nrPos > 1 then
	 		begin
	 		if el < prevEl then
				begin
				prevEl := el;
				minEl := el;
				end;
			end
		else
			begin
			prevEl := el;
	 		minEl := el;
			end
	 end;
	end;
write('The smallest element in the entered array is: ', minEl);

end.