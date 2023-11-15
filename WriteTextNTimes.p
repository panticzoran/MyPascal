program WriteTextNTimes;
uses crt; (* use the computer monitor for output*)

var i: integer;
var n: integer;
var text: String;

(* The for loop to print out some text n times *)

begin

write('Please enter the text to be printed: ');
read(text);

write('How many times should the text be printed: ');
read(n);

for i := 1 to n do
	writeln('Line number: ', i, ' the text: ', text);


end.