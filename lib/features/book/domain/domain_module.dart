import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/features/book/data/data_module.dart';
import 'package:shelfify/features/book/domain/book_usecase.dart';


final getAllBooksUseCaseProvider = Provider<GetAllBooksUseCase>((ref) {
  final repository = ref.watch(booksRepositoryProvider);
  return GetAllBooksUseCaseImpl(repository);
});

final createBookUseCaseProvider = Provider<CreateBookUseCase>((ref) {
  final repository = ref.watch(booksRepositoryProvider);
  return CreateBookUseCaseImpl(repository);
});

final updateBookUseCaseProvider = Provider<UpdateBookUsecase>((ref) {
  final repository = ref.watch(booksRepositoryProvider);
  return UpdateBookUsecaseImpl(repository);
});

