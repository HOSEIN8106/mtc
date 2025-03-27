import 'package:get/get.dart';
import 'package:mtc/controller/class_plan_page_controller.dart';

class ClassPlanPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassPlanPageController>(() {
      return ClassPlanPageController();
    });
  }
}
