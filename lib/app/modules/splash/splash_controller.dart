import 'package:get/get.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController.

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
     Future.delayed(Duration(seconds: 3), () {
      Get.toNamed('/');
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
