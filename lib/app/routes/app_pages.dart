import 'package:get/get.dart';

import '../modules/brands/bindings/brands_binding.dart';
import '../modules/brands/views/brands_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main_page/bindings/main_page_binding.dart';
import '../modules/main_page/views/main_page_view.dart';
import '../modules/order_list/bindings/order_list_binding.dart';
import '../modules/order_list/views/order_list_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/wallet/bindings/wallet_binding.dart';
import '../modules/wallet/views/wallet_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_LIST,
      page: () => OrderListView(),
      binding: OrderListBinding(),
      children: [
        GetPage(
          name: _Paths.ORDER_LIST,
          page: () => OrderListView(),
          binding: OrderListBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => WalletView(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_PAGE,
      page: () => MainPageView(),
      binding: MainPageBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.BRANDS,
      page: () => const BrandsView(),
      binding: BrandsBinding(),
    ),
  ];
}
