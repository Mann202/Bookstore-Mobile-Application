import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:shelfify/features/book/presentation/view/add_new_book.screen.dart";
import "package:shelfify/features/book/presentation/view/add_new_book_title.screen.dart";
import "package:shelfify/features/book/presentation/view/book_detail.screen.dart";
import "package:shelfify/features/book/presentation/view/book_list.screen.dart";
import "package:shelfify/features/book/presentation/view/create_receipt.screen.dart";
import "package:shelfify/features/book/presentation/view/create_report.screen.dart";
import "package:shelfify/features/book/presentation/view/find_book.screen.dart";
import "package:shelfify/features/book/presentation/view/print_receipt.screen.dart";
import "package:shelfify/features/settings/presentation/accounts_screen.dart";
import "package:shelfify/features/settings/presentation/settings_screen.dart";
import "package:shelfify/list_screen.dart";
import "package:shelfify/login_page.dart";
import "package:shelfify/features/book/presentation/view/book_detail.screen.dart";
import "package:shelfify/features/book/presentation/view/book_list.screen.dart";
import "package:shelfify/features/book/presentation/view/add_new_book_invoice.screen.dart";
import "package:shelfify/features/book/presentation/view/add_new_customer.screen.dart";
import "package:shelfify/features/book/presentation/view/book_list.screen.dart";
import "package:shelfify/features/book/presentation/view/search_customer.screen.dart";
import "package:shelfify/main_page.dart";

import "not_found_screen.dart";

GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => HomePage(),
      ),
      GoRoute(path: '/category', builder: (context, state) => ListScreen()), 
      GoRoute(path: '/account', builder: (context, state) => AccountsSreen()),
      GoRoute(path: '/settings', builder: (context, state) => SettingsScreen()),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return goRouter(ref);
});

typedef GoRouterRef = ProviderRef<GoRouter>;
