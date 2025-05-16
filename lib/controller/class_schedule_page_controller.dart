import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtc/widgets/class_schedule_detail_bottom_sheet.dart';


class ClassSchedulePageController extends GetxController {
  void openDetailLessonChartBottomSheet() {
    Get.bottomSheet(
      Wrap(
        children: [
          ClassScheduleDetailBottomSheet(),
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
