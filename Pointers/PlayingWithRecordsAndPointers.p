program PlayingWithRecordsAndPointers;


(* Playing with records and pointers in Pascal *)

uses crt;


type

(* Define the type of record pointer refering to books type *)
booksPointer = ^ books;

(* Define the type of record *)
books = record
  bookTitle: packed array [1..50] of char;
  bookAuthor: packed array [1..50] of char;
  bookSubject: packed array [1..50] of char;
  BookId: longint;
  
end;

(* Declare the variables of pointer type refering to books type *)
var
book1, book2: booksPointer;


(* Declaring the procedure for printing books *)
procedure printBook(var book: books);
begin
  writeln('Book title: ', book.bookTitle);
  writeln('Book author: ', book.bookAuthor);
  writeln('Book subject: ', book.bookSubject);
  writeln('Book identifier: ', book.BookId);
end;

begin

(* Creating storage for book type variable*)
new (book1);
new (book2);

(* Book 1 specification *)
book1^.bookTitle  := 'Pascal Programming';
book1^.bookAuthor := 'Muhammad Ali'; 
book1^.bookSubject := 'Pascal Programming Tutorial';
book1^.BookId := 22334;

(* Book 2 specification *)
book2^.bookTitle := 'Life hacks';
book2^.bookAuthor := 'Smart Guy';
book2^.bookSubject := 'Tutorial for life hacks';
book2^.BookId := 11223;

writeln('------------------');
printBook(book1^);
writeln('');

writeln('------------------');
printBook(book2^);
writeln('');

(* Disposing the storage used*)
dispose(book1);
dispose(book2);

end.