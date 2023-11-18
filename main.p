program Find2MinimalElements;
uses crt;

(* In the array of N numbers, find the 2 smalest elements, and print them in ascending order *)

var 
nrEl , el , i, minElSmall, minElBig : integer;

begin

write('Enter the number of elements: ');
read(nrEl);


for i := 2 to nrEl do
	begin
	write('Element nr.', i , ': ');
	read(el);
 
 	if el < minEl then
		begin
		minEl := el;
		howManyMins := 1;
		end;
	
	if el = minEl then howManyMins := howManyMins + 1;
	
	end;
 
write('The smallest element in the entered array is: ', minEl, ' and it is occuring ', howManyMins, ' times.');

end.