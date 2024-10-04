import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import flutter_screenutil
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812), // Base screen size, typically used for responsive scaling
      minTextAdapt: true, // Allows text scaling
      splitScreenMode: true, // Adjust for split-screen scenarios
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          builder: (context, widget) {
            ScreenUtil.init(context); // Initialize ScreenUtil inside the builder
            return widget!;
          },
        );
      },
    ),
  );
}
