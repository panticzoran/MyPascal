program NumberOfMinimalElements;
uses crt;

(* In the array of N numbers, find the smalest element, and count how many of those are there *)

var 
nrEl , el , i, minEl, howManyMins : integer;

begin

write('Enter the number of elements: ');
read(nrEl);

write('Element nr.1: ');
read(el);
minEl := el;
howManyMins := 0;

for i := 2 to nrEl do
	begin
	write('Element nr.', i , ': ');
	read(el);
 	


end.