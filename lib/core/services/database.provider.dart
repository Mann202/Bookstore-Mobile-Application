import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite_common/sqflite.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();

  static Database? _database;
  static const String _databaseName = 'database.db';

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    final dbPath = join(await getDatabasesPath(), _databaseName);
    return openDatabase(dbPath, version: 1, onCreate: (db, _) async {
      final bytes = await rootBundle.loadString('assets/database/script.sql');
      final List<String> scripts = bytes.split(';');
      for (String script in scripts) {
        if (script.trim().isNotEmpty) {
          await db.execute(script);
        }
      }
    });
  }
}
