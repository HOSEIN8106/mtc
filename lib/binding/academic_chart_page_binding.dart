import 'package:get/get.dart';
import 'package:mtc/controller/academic_chart_page_controller.dart';

class AcademicChartPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcademicChartPageController>(() {
      return AcademicChartPageController();
    });
  }
}
