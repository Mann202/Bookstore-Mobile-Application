import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sqflite/sqflite.dart';

final databaseProvider = FutureProvider<Database>((ref) async {
  final db = await openDatabase("lib\\core\\database\\QLNS.db");
  return db;
});
