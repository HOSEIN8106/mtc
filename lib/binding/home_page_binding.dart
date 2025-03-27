import 'package:get/get.dart';
import 'package:mtc/controller/home_page_controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() {
      return HomePageController();
    });
  }
}
