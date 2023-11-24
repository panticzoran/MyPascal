PROGRAM RightTriangles (output);
(* Draw two right triangles filled with *** *)
VAR row, column : integer;

BEGIN (* RightTriangles *)
FOR row := 1 TO 10 DO BEGIN
FOR column := 1 TO row DO Write (' * ');
Writeln;
END;
Writeln;
FOR row := 4 DOWNTO 1 DO BEGIN FOR column := 1 TO row DO Write (* * *);
Writeln;
END;
END. (* RightTriangles *)
(* write only as many ’*’ as *) (* the number of the row *)
(* we are on *)
(* Now do the reverse of the *) (* above for loop *)