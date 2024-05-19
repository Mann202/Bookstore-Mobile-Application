import 'dart:io';

import 'package:shelfify/core/constants/constants.dart';
import 'package:shelfify/core/services/database.provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

typedef BookEntity = Map<String, dynamic>;
typedef BookListEntity = List<BookEntity>;

abstract class BooksDatabase {
  Future<BookListEntity> getAllBooks();
  Future<BookEntity> insertBook(final BookEntity bookEntity);
  Future<void> updateBook(final BookEntity bookEntity);
}

class BookDatabaseImpl implements BooksDatabase {
  static const _tableName = 'SACH';
  static const _columnId = 'MaSach';

  @override
  Future<BookListEntity> getAllBooks() async {
    final db = await DBProvider.db.database;
    return db.query(_tableName);
  }

  @override
  Future<BookEntity> insertBook(final BookEntity book) async {
    final db = await DBProvider.db.database;
    late final BookEntity bookEntity;
    await db.transaction((txn) async {
      final id = await txn.insert(
        _tableName,
        book,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      final results =
          await txn.query(_tableName, where: '$_columnId = ?', whereArgs: [id]);
      bookEntity = results.first;
    });
    return bookEntity;
  }

  @override
  Future<void> updateBook(BookEntity book) async {
    final db = await DBProvider.db.database;
    final int id = book['id'];
    await db.update(
      _tableName,
      book,
      where: "$_columnId =?",
      whereArgs: [id],
    );
  }
}
