import 'package:get/get.dart';
import 'package:mtc/controller/splash_page_controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashPageController>(() {
      return SplashPageController();
    });
  }
}
