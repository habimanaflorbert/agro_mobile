import 'package:flutter/material.dart';
import 'package:agro/views/home.dart';
import 'package:agro/views/splash.dart';
import 'package:agro/controllers/splash.dart';
import 'package:get/get.dart';


void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final SplashController spal = Get.put(SplashController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Obx(() {
        return spal.splash == true ? SplashView() : MyHome();
      }),
    );
  }
}
