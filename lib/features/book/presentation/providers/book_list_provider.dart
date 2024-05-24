import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/state/state.dart';
import 'package:shelfify/features/book/domain/book_usecase.dart';
import 'package:shelfify/features/book/domain/domain_module.dart';

final bookListStateNotifierProvider =
    StateNotifierProvider.autoDispose<BookListStateNotifier, State<List<Book>>>(
  (ref) => BookListStateNotifier(
    ref.read(getAllBooksUseCaseProvider),
    ref.read(createBookUseCaseProvider),
    ref.read(updateBookUseCaseProvider),
  ),
);

class BookListStateNotifier extends StateNotifier<State<List<Book>>> {
  final GetAllBooksUseCase getAllBooksUseCase;
  final CreateBookUseCase createBookUseCase;
  final UpdateBookUsecase updateBookUsecase;

  BookListStateNotifier(
    this.getAllBooksUseCase,
    this.createBookUseCase,
    this.updateBookUsecase,
  ) : super(const State.init()) {
    getAllBooks();
  }

  getAllBooks() async {
    try {
      state = const State.loading();
      final books = await getAllBooksUseCase.execute();
      state = State.success(books);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  createBook(Book book) async {
    try {
      state = const State.loading();
      await createBookUseCase.execute(book);
      final bookList = [...state.data!, book];
      state = State.success(bookList);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  updateBook(Book book) async {
    try {
      state = const State.loading();
      await updateBookUsecase.execute(book);
      final bookList = state.data!;
      bookList.removeWhere((b) => b.id == book.id);
      bookList.add(book);
      state = State.success(bookList);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  searchBook(String query) async {
    try {
      state = const State.loading();
      final books = await getAllBooksUseCase.execute();
      final filteredBooks = books.where((book) {
        return book.title
            .toString()
            .toLowerCase()
            .contains(query.toLowerCase());
      }).toList();
      state = State.success(filteredBooks);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}
