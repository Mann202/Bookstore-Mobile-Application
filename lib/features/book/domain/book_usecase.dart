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