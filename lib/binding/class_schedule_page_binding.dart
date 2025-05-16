import 'package:get/get.dart';
import 'package:mtc/controller/class_schedule_page_controller.dart';

class ClassSchedulePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassSchedulePageController>(() {
      return ClassSchedulePageController();
    });
  }
}
