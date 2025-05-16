import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtc/widgets/detail_lesson_chart_bottom_sheet.dart';


class LessonChartPageController extends GetxController {
  void openDetailLessonChartBottomSheet() {
    Get.bottomSheet(
      Wrap(
        children: [
          DetailLessonChartBottomSheet(),
        ],
      ),
      isScrollControlled: true,
      enableDrag: true,
      isDismissible: true,
      useRootNavigator: true,
      backgroundColor: Colors.transparent,
    );
  }
}
