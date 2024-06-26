import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:shelfify/features/book/presentation/view/add_new_book.screen.dart";
import "package:shelfify/features/book/presentation/view/add_new_book_invoice.screen.dart";
import "package:shelfify/features/book/presentation/view/add_new_customer.screen.dart";
import "package:shelfify/features/book/presentation/view/book_detail.screen.dart";
import "package:shelfify/features/book/presentation/view/book_list.screen.dart";
import "package:shelfify/features/book/presentation/view/category_screen.dart";
import "package:shelfify/features/book/presentation/view/search_book_screen.dart";
import "package:shelfify/features/customer/presentation/view/list_customer_screen.dart";
import "package:shelfify/features/customer/presentation/view/search_customer_screen.dart";
import "package:shelfify/features/purchase_receipt/presentation/view/create_purchase_receipt_screen.dart";
import "package:shelfify/main_page.dart";
import "package:shelfify/features/book/presentation/view/print_receipt.screen.dart";
import "package:shelfify/features/book/presentation/view/search_book_screen.dart";
import "package:shelfify/features/customer/presentation/view/list_customer_screen.dart";
import "package:shelfify/features/customer/presentation/view/search_customer_screen.dart";
import "package:shelfify/features/home/presentation/view/caterogy_screen.dart";
import "package:shelfify/features/home/presentation/view/home_screen.dart";
import "package:shelfify/features/invoice/presentation/view/create_invoice_screen.dart";
import "package:shelfify/features/purchase_receipt/presentation/view/create_phieu_nhap_sach.dart";
import "package:shelfify/features/purchase_receipt/presentation/view/create_purchase_receipt_screen.dart";
import "package:shelfify/features/settings/acconut_screen.screen.dart";
import "package:shelfify/features/settings/setting_screen.screen.dart";

import "not_found_screen.dart";

GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const CategoryScreen(),
        routes: [
          GoRoute(
            path: "bookList",
            builder: (context, state) => const BookListScreen(),
          ),
          GoRoute(
              path: "createPurchaseReceipt",
              builder: (context, state) => CreatePurchaseReceiptScreen()),
          GoRoute(
            path: "searchCustomer",
            builder: (context, state) => const SearchCustomerScreen(),
          ),
          GoRoute(
            path: "searchBook",
            builder: (context, state) => const SearchBookScreen(),
          ),
          GoRoute(
            path: "listCustomer",
            builder: (context, state) => const ListCustomerScreen(),
          ),
          GoRoute(
            path: "createInvoice",
            builder: (context, state) => const CreateInvoiceScreen(),
          ),
          GoRoute(
              path: "printReceiptScreen",
              builder: (context, state) => const PrintReceiptScreen()),
          GoRoute(
              path: "phieuNhapSach",
              builder: (context, state) => const PhieuNhapSach()),
        ],
      ),
      GoRoute(
        path: "/category",
        builder: (context, state) => const CategoryScreen(),
        routes: const [],
      ),
      GoRoute(
        path: "/account",
        builder: (context, state) => const AccountsSreen(),
        routes: const [],
      ),
      GoRoute(
        path: "/settings",
        builder: (context, state) => const SettingsScreen(),
        routes: const [],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return goRouter(ref);
});

typedef GoRouterRef = ProviderRef<GoRouter>;
