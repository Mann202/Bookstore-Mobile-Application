import "package:flutter/widgets.dart";
import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "not_found_screen.dart";

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => Container(),
      )
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}


String _$goRouterHash() => r'e5cabd4f20eef185e81873123268c01a10ec500e';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = Provider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoRouterRef = ProviderRef<GoRouter>;