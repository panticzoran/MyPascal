program PlayingWithProcedures01;

{ Procedure for just printing anything }
procedure odstampajBiloSta ();
begin
writeln('Ispisao sam bilo šta');
writeln('');
end;

{ Procedure for printing a range of numbers}
procedure odstampajBrojeveOdDo (var odBroja, doBroja : integer);
var i : integer;
begin
for i := odBroja to doBroja do
writeln(i)
end;


var odNekogBroja, doNekogBroja : integer;

begin

odstampajBiloSta;

odNekogBroja := 7;
doNekogBroja := 13;
odstampajBrojeveOdDo(odNekogBroja, doNekogBroja);

end.