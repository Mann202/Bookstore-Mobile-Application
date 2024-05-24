import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:shelfify/features/book/presentation/view/add_new_book.screen.dart";
import "package:shelfify/features/book/presentation/view/book_detail.screen.dart";
import "package:shelfify/features/book/presentation/view/book_list.screen.dart";
import "package:shelfify/features/book/presentation/view/create_receipt.screen.dart";
import "package:shelfify/features/book/presentation/view/create_report.screen.dart";
import "package:shelfify/features/book/presentation/view/find_book.screen.dart";
import "package:shelfify/features/book/presentation/view/print_receipt.screen.dart";
import "package:shelfify/features/settings/presentation/accounts_screen.dart";
import "package:shelfify/features/settings/presentation/settings_screen.dart";
import "package:shelfify/login_page.dart";
<<<<<<< HEAD
import "package:shelfify/features/book/presentation/view/book_detail.screen.dart";
import "package:shelfify/features/book/presentation/view/book_list.screen.dart";
import "package:shelfify/features/home/presentation/view/home_screen.dart";
import "package:shelfify/features/book/presentation/view/add_new_book_invoice.screen.dart";
import "package:shelfify/features/book/presentation/view/add_new_customer.screen.dart";
import "package:shelfify/features/book/presentation/view/book_list.screen.dart";
import "package:shelfify/features/book/presentation/view/search_customer.screen.dart";
=======
>>>>>>> parent of 7a3c3e2 (Merge remote-tracking branch 'origin/khoi')

import "not_found_screen.dart";

GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const CreateReceiptScreen(),
      )
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return goRouter(ref);
});

typedef GoRouterRef = ProviderRef<GoRouter>;
