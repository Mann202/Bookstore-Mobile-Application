import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/models/models.dart';

final selectedBookStateProvider = StateProvider<List<Book>>((ref) => []);
