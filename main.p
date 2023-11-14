program SimplePascalProgram;
uses crt; (* use the computer monitor for output*)

var i: integer;
var n: integer;

(* The for loop to write a piece of text n times *)

begin
	n := 10;
	for i := 1 to n do
		writeln('Line number', i);
end.