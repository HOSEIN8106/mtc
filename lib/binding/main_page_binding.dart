import 'package:get/get.dart';
import 'package:mtc/controller/main_page_controller.dart';
import 'package:mtc/controller/splash_page_controller.dart';

class MainPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(() {
      return MainPageController();
    });
  }
}
