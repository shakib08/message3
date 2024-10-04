import 'package:get/get.dart';

import '../controllers/chatting_list_controller.dart';

class ChattingListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChattingListController>(
      () => ChattingListController(),
    );
  }
}
