import "package:flutter/widgets.dart";
import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:shelfify/features/book/presentation/view/book_list.screen.dart";
import "package:shelfify/login_page.dart";

import "not_found_screen.dart";

@Riverpod(keepAlive: true)
GoRouter goRouter(ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SettingsScreen(),
      )
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return goRouter(ref);
});
