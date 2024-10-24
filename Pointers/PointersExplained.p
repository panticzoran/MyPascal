program PointersExplained;

{ Pointer is memory address where the variable is stored in RAM }

var
  number: integer; { number of type integer }
  numberPointer: ^integer; { pointer to some integer, data type stored at that location in the memory }
  numberAddress: ^word; { address, pointer to some word data type variable }
  
  aString: string;
  stringPointer: ^string; { pointer to some string }
  stringAddress: ^word;

begin

  writeln;

  number := 76;
  writeln('The number is ', number);

  numberPointer := @number; { assigning "numberPointer" the address where the value of "number" is stored - same as numberPointer := addr(number); }
  writeln('The numberPointer is pointing to this value: ', numberPointer^); { cannot print just a pointer, need to dereference it first, to get the value stored at that pointer }

  numberAddress := @numberPointer; // same as numberAddress := addr(numberPointer);
  writeln('The address in numberPointer is ', numberAddress^); { printing the address of numberPointer }

  writeln;

  writeln('Assigned nil to stringPointer.');

  stringPointer := nil; { pointer that has no value, so not pointing to any location in RAM }
  stringAddress := @stringPointer;

  if stringPointer <> nil then
  begin
    writeln('The stringPointer points to something');
    write('(', stringAddress^ , ')');
  end
  else
  begin
    writeln('The stringPointer points to nothing');
    write('(', stringAddress^ , ')');
  end;

writeln;
writeln;
writeln('-----------');
writeln;

aString := 'sMthNg';
writeln('The aString is ', aString);
stringPointer := addr(aString); { now the pointer points to something }
writeln('The stringPointer is pointing to this value: ', stringPointer^);

writeln;

writeln('Something is now assigned to stringPointer.');

if stringPointer <> nil then
begin
  writeln('The stringPointer points to something');
  write('(', stringPointer^ , ')');
end
else
begin
  writeln('The stringPointer points to nothing');
  write('(', stringPointer^ , ')');
end;

writeln;
stringAddress := addr(stringPointer);
writeln('The address of aString is ', stringAddress^);

end.