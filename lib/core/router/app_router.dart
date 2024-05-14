import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "not_found_screen.dart";

part "app_router.g.dart";

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
      )
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
