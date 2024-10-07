import 'package:get/get.dart';
import 'dart:async';

class ChattingListController extends GetxController {
  //TODO: Implement ChattingListController

  final count = 0.obs;


  var progress = 0.0.obs;

  RxBool isloading=true.obs;

 var isMultiSelect = false.obs; // Reactive observable for multi-select toggle

  void toggleMultiSelect() {
    isMultiSelect.value = !isMultiSelect.value; // Toggles the multi-select state
  }



  void simulateLoading() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (progress.value < 100) {
        progress.value += 5;

        isloading.value=true;
        // Increment progress by 5% every 100ms
      } else {
        timer.cancel();
        isloading.value=false;
        //Get.offNamed('/chatting-list'); // Redirect to ChattingListView when 100%
      }
    });
  }








  @override
  void onInit() {
    super.onInit();
    simulateLoading();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
