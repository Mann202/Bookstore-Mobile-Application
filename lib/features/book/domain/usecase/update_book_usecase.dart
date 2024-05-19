import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/features/book/domain/repository/books_repository.dart';

abstract class UpdateBookUsecase {
  Future<void> execute(Book book);
}

class UpdateBookUsecaseImpl implements UpdateBookUsecase {
  final BooksRepository repository;

  const UpdateBookUsecaseImpl(this.repository);

  @override
  Future<void> execute(Book book) async {
    await repository.updateBook(book);
  }
}
