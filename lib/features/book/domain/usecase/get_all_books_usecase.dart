import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/features/book/domain/repository/books_repository.dart';

abstract class GetAllBooksUseCase {
  Future<List<Book>> execute();
}

class GetAllBooksUseCaseImpl implements GetAllBooksUseCase {
  final BooksRepository repository;

  const GetAllBooksUseCaseImpl(this.repository);

  @override
  Future<List<Book>> execute() async {
    return repository.getAllBooks();
  }
}
