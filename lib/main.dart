import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GoRouter.optionURLReflectsImperativeAPIs = true;
  final ProviderContainer container = ProviderContainer(
    overrides: <Override>[],
  );

  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  runApp(UncontrolledProviderScope(
    container: container,
    child: const MyApp(),
  ));
}
