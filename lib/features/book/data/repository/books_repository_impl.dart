import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/models/models.extension.dart';
import 'package:shelfify/features/book/data/datasource/books_database.dart';
import 'package:shelfify/features/book/domain/repository/books_repository.dart';

class BooksRepositoryImpl implements BooksRepository {
  final BookDatabase database;

  const BooksRepositoryImpl(this.database);

  @override
  Future<List<Book>> getAllBooks() async {
    final bookListEntity = await database.getAllBooks();
    return bookListEntity.map((book) => Book.fromMap(book)).toList();
  }

  @override
  Future<void> updateBook(Book book) {
    return database.updateBook(book.toMap());
  }

  @override
  Future<void> createBook(Book book) async {
    await database.insertBook(book.toMap());
  }
}
