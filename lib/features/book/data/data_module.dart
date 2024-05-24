import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/features/book/data/datasource/books_database.dart';
import 'package:shelfify/features/book/data/repository/books_repository_impl.dart';
import 'package:shelfify/features/book/domain/repository/books_repository.dart';

final bookDatabaseProvider = Provider<BookDatabase>((_) => BookDatabaseImpl());
final booksRepositoryProvider = Provider<BooksRepository>(
    (ref) => BooksRepositoryImpl(ref.read(bookDatabaseProvider)));
