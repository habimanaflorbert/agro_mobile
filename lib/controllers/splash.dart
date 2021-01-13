import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class SplashController extends GetxController {
  var splash = true.obs;
  @override
  void onInit() {
    super.onInit();
    splashstate();
  }

  void splashstate() async {
    await Future.delayed(Duration(seconds:10), () {
      splash.value = false;
    });
  }
}
