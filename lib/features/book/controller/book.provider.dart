import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/database/datebase.provider.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/models/models.extension.dart';
import 'package:sqflite/sqflite.dart';

class BookController {
  final Database db;

  BookController({required this.db});

  Future<void> add(Book book) async {
    await db.insert('Sach', book.toMap());
  }

  Future<void> update(Book book) async {
    await db.update(
      'Sach',
      book.toMap(),
      where: 'MaSach = ?',
      whereArgs: <int>[book.bookId],
    );
  }

  Future<void> delete(int bookId) async {
    await db.delete(
      'Sach',
      where: 'MaSach = ?',
      whereArgs: <int>[bookId],
    );
  }

  Future<List<Book>> getAll() async {
    final List<Map<String, dynamic>> maps = await db.query('Sach');

    return List<Book>.generate(maps.length, (int index) {
      return Book.fromMap(maps[index]);
    });
  }
}

final bookControllerProvider = FutureProvider((ref) async {
  final Database db = await ref.watch(databaseProvider.future);
  return BookController(db: db);
});
