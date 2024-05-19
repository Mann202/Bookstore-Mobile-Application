import 'package:shelfify/core/models/models.dart';

abstract class BooksRepository {
  Future<List<Book>> getAllBooks();
  Future<void> createBook(Book book);
  Future<void> updateBook(Book book);
}
