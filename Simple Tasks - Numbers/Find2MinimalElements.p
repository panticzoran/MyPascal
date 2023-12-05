program Find2MinimalElements;
uses crt;

(* In the array of N numbers, find the 2 smalest elements, and print them in ascending order *)

var 
nrEl , el , i , minEl1, minEl2 : integer;

begin

write('Enter the number of elements: ');
read(nrEl);

write('Element nr.1: ');
read(el);
minEl1 := el;

write('Element nr.2: ');
read(el);
minEl2 := el;

if minEl1 > minEl2 then
	begin
 	el := minEl1;
	minEl1 := minEl2;
 	minEl2 := el;
	end;

for i := 3 to nrEl do
	begin
 	
	write('Element nr.', i , ': ');
	read(el);

	if el < minEl2 then
 		begin
	 	if el < minEl1 then
	 		begin
			minEl2 := minEl1;
	 		minEl1 := el
			end
	 	else minEl2 := el;
		end;
	
	end;

write('The smallest elements in the entered array are: ', minEl1, ' and ', minEl2, '.');

end.