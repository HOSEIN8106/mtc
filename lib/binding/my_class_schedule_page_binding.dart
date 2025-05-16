import 'package:get/get.dart';
import 'package:mtc/controller/my_class_schedule_page_controller.dart';

class MyClassSchedulePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyClassSchedulePageController>(() {
      return MyClassSchedulePageController();
    });
  }
}
