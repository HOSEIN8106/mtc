import 'package:get/get.dart';
import 'package:mtc/controller/lesson_chart_page_controller.dart';

class LessonChartPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LessonChartPageController>(() {
      return LessonChartPageController();
    });
  }
}
