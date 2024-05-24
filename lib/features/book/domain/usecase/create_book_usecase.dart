import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/features/book/domain/repository/books_repository.dart';

abstract class CreateBookUseCase {
  Future<Book> execute(Book book);
}

class CreateBookUseCaseImpl implements CreateBookUseCase {
  final BooksRepository repository;

  const CreateBookUseCaseImpl(this.repository);

  @override
  Future<Book> execute(Book book) async {
    await repository.createBook(book);
    return book;
  }
}
