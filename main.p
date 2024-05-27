program MatrixSumOfColumns;

(* Simple example with 2 dimensional arrays = matrices *)

uses crt;

(* Generates a matrix filled with random numbers *)

var
stringic, noviStringic : string;
i : longint;


begin

stringic := '';
noviStringic := '';

write('Please input the string: ', stringic);
read(stringic);
writeln;
writeln('The string is: ', stringic);
writeln;
write('The length of the string: ', stringic, ' is ', length(stringic));
writeln;
write('The first character of the string: ', stringic, ' is ', stringic[1]);
writeln;
write('ASCII table');
writeln;
write('==================================');
writeln;
for i := 0 to 255 do
begin
write(i, ' ', chr(i), ' ')
end;
writeln;
write('==================================');
writeln;
write('Concatenated 2 times the string: ', stringic, ' is ', concat(stringic, stringic));
writeln;

Setlength(stringic,100);
FillChar(stringic[1],100,#65);
Writeln ('"', stringic,'"');
writeln;

i := 12;
str(i,novistringic);
write('Str of ', i, ' is ', noviStringic);
writeln;


writeln;

end.