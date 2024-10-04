import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import flutter_screenutil
import '../controllers/loading_controller.dart';

class LoadingView extends GetView<LoadingController> {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.h), // Responsive height
            // Logo or Icon
            Image.asset(
              'assets/top_logo.png', // Foreground logo
              width: 100.w, // Responsive width for image
              height: 100.h, // Responsive height for image
            ),
            SizedBox(height: 20.h),
            // App Name Text
            Text(
              'MessageMind',
              style: TextStyle(
                fontSize: 24.sp, // Responsive font size
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),
            // Progress bar with 80% width
            Obx(() {
              return Column(
                children: [
                  SizedBox(
                    width: 0.8.sw, // 80% of screen width
                    child: LinearProgressIndicator(
                      value: controller.progress.value / 100, // Using controller's value
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.pink),
                      minHeight: 5.h, // Responsive height
                    ),
                  ),
                  SizedBox(height: 10.h),
                  // Progress percentage text
                  Text(
                    '${controller.progress.value.toStringAsFixed(0)}%',
                    style: TextStyle(
                      fontSize: 16.sp, // Responsive font size
                      color: Colors.black,
                    ),
                  ),
                ],
              );
            }),
            SizedBox(height: 20.h),
            // Loading Text
            Text(
              'Loading . . .',
              style: TextStyle(
                fontSize: 16.sp, // Responsive font size
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
