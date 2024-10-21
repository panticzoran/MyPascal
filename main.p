program PointersExplained;

{ Pointer is memory address where the variable is stored in RAM }

var
  number: integer; { number of type integer }
  numberPointer: ^integer; { pointer to an integer, data type stored at that location in the memory }
  numberAddress: ^word; { address, pointer to a word data type variable }
  nilPointer: ^string; { pointer to a string }
  aString: string;

begin

  number := 76;
  writeln('The number is ', number);

  numberPointer := @number; { assigning "numberPointer" the address where the value on "number" is stored }
  writeln('The numberPointer is ', numberPointer^); { cannot print a pointer, need to dereference it first, to get the value stored at that pointer }

  numberAddress := addr(numberPointer);
  writeln('The address is ', numberAddress^); { getting the address of numberPointer }

  nilPointer := nil; { pointer that has no value, so not pointing to any location in RAM }

  if nilPointer <> nil then
  begin
    writeln('The nilPointer points to something');
  end
  else
  begin
    writeln('The nilPointer points to nothing');
  end;

aString := 'sMthNg';
nilPointer := addr(aString); { now the pointer points to something }

if nilPointer <> nil then
begin
  writeln('The nilPointer points to something');
  write('(', nilPointer^ , ')')
end
else
begin
  writeln('The nilPointer points to nothing');
  write('(', nilPointer^ , ')')
end;
  
end.