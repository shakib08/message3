import 'package:get/get.dart';

import '../modules/chating/bindings/chating_binding.dart';
import '../modules/chating/views/chating_view.dart';
import '../modules/chattingList/bindings/chatting_list_binding.dart';
import '../modules/chattingList/views/chatting_list_view.dart';
import '../modules/contact_detail/bindings/contact_detail_binding.dart';
import '../modules/contact_detail/views/contact_detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    // GetPage(
    //   name: _Paths.LOADING,
    //   page: () => const LoadingView(),
    //   binding: LoadingBinding(),
    // ),
    GetPage(
      name: _Paths.CHATTING_LIST,
      page: () => ChattingListView(),
      binding: ChattingListBinding(),
    ),
    GetPage(
      name: _Paths.CHATING,
      page: () => const ChatScreen(),
      binding: ChatingBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_DETAIL,
      page: () => const ContactDetailView(),
      binding: ContactDetailBinding(),
    ),
  ];
}
