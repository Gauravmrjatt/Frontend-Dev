class Book {
  constructor(title, author, isbn, isIssued = false) {
    this.title = title;
    this.author = author;
    this.isbn = isbn;
    this.isIssued = isIssued;
  }
  issueBook() { this.isIssued = true; }
  returnBook() { this.isIssued = false; }
}

const library = [
  new Book('A', 'Author1', '111'),
  new Book('B', 'Author2', '222', true),
  new Book('C', 'Author3', '333')
];

console.log('Available books:', library.filter(b => !b.isIssued));

function issueByISBN(code) {
  const book = library.find(b => b.isbn === code);
  if (book && !book.isIssued) book.issueBook();
  return book;
}

console.log(issueByISBN('333'));
