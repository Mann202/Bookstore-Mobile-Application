import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:shelfify/features/book/presentation/view/add_new_book.screen.dart";
import "package:shelfify/features/book/presentation/view/add_new_book_invoice.screen.dart";
import "package:shelfify/features/book/presentation/view/add_new_customer.screen.dart";
import "package:shelfify/features/book/presentation/view/book_list.screen.dart";

import "not_found_screen.dart";

GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => AddNewCustomer(),
      )
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return goRouter(ref);
});

typedef GoRouterRef = ProviderRef<GoRouter>;
