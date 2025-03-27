import 'package:get/get.dart';
import 'package:mtc/controller/splash_page_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashPageController>(() {
      return SplashPageController();
    });
  }
}
