program PlayingWithRecords;


(* Playing with records in Pascal *)

uses crt;

(* Define the type of record *)
type
books = record
  bookTitle: packed array [1..50] of char;
  bookAuthor: packed array [1..50] of char;
  bookSubject: packed array [1..50] of char;
  BookId: integer;
end;

(* Declare the variables of a type of "books" *)
var
book1, book2: books;


(* Declaring the procedure for printing books *)
procedure printBook(var book: books);
begin
  writeln('Book title: ', book.bookTitle);
  writeln('Book author: ', book.bookAuthor);
  writeln('Book subject: ', book.bookSubject);
  writeln('Book identifier: ', book.BookId);
end;

begin

(* Book 1 specification *)
book1.bookTitle  := 'Pascal Programming';
book1.bookAuthor := 'Muhammad Ali'; 
book1.bookSubject := 'Pascal Programming Tutorial';
book1.BookId := 22334;

(* Book 2 specification *)
book2.bookTitle := 'Life hacks';
book2.bookAuthor := 'Smart Guy';
book2.bookSubject := 'Tutorial for life hacks';
book2.BookId := 11223;

writeln('------------------');
printBook(book1);
writeln('');

writeln('------------------');
printBook(book2);
writeln('');

end.