import 'package:get/get.dart';
import 'dart:async';

class LoadingController extends GetxController {
  var progress = 0.0.obs; // Holds progress value

  @override
  void onInit() {
    super.onInit();
    simulateLoading(); // Start simulating the loading process
  }

  // Simulate the progress over time
  void simulateLoading() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (progress.value < 100) {
        progress.value += 5; // Increment progress by 5% every 100ms
      } else {
        timer.cancel();
        Get.offNamed('/chatting-list'); // Redirect to ChattingListView when 100%
      }
    });
  }
}
