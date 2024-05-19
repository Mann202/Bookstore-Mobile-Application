import 'package:shelfify/core/constants/constants.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/services/database.provider.dart';
import 'package:sqflite/sqflite.dart';

typedef BookEntity = Map<String, dynamic>;
typedef BookTitleEntity = Map<String, dynamic>;
typedef CategoryEntity = Map<String, dynamic>;
typedef BookListEntity = List<BookEntity>;

abstract class BookDatabase {
  Future<BookListEntity> getAllBooks();
  Future<BookEntity> insertBook(final BookEntity bookEntity);
  Future<void> updateBook(final BookEntity bookEntity);
}

class BookDatabaseImpl implements BookDatabase {
  static const _bookTable = 'SACH';
  static const _bookTitleTable = 'DAUSACH';
  static const _categoryTable = 'THELOAI';
  static const _columnId = 'MaSach';

  @override
  Future<BookListEntity> getAllBooks() async {
    final db = await DBProvider.db.database;

    final bookTable = await db.query(_bookTable);
    final bookTitleTable = await db.query(_bookTitleTable);
    final categoryTable = await db.query(_categoryTable);
    final authorTable = await db.rawQuery('''
  SELECT *
  FROM TACGIA
  JOIN CT_TACGIA
  ON TACGIA.MaTacGia = CT_TACGIA.MaTacGia
''');

    final BookListEntity entity = bookTable.map((book) {
      final bookTitle = bookTitleTable.firstWhere(
        (title) => title['MaDauSach'] == book['MaDauSach'],
      );
      final category = categoryTable.firstWhere(
        (category) => category['MaTheLoai'] == bookTitle['MaTheLoai'],
      );
      final author = authorTable.firstWhere(
          (author) => author['MaDauSach'] == bookTitle['MaDauSach']);
      return {
        ...book,
        'DauSach': bookTitle,
        'TheLoai': category,
        'TacGia': author
      };
    }).toList();
    return entity;
  }

  @override
  Future<BookEntity> insertBook(final BookEntity book) async {
    final db = await DBProvider.db.database;
    late final BookEntity bookEntity;
    await db.transaction((txn) async {
      final id = await txn.insert(
        _bookTable,
        book,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      final results =
          await txn.query(_bookTable, where: '$_columnId = ?', whereArgs: [id]);
      bookEntity = results.first;
    });
    return bookEntity;
  }

  @override
  Future<void> updateBook(BookEntity book) async {
    final db = await DBProvider.db.database;
    final int id = book['id'];
    await db.update(
      _bookTable,
      book,
      where: "$_columnId =?",
      whereArgs: [id],
    );
  }
}
