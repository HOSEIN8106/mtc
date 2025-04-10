import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtc/enumerations/bottom_navigation_type.dart';
import 'package:mtc/mtc_app.dart';
import 'package:mtc/pages/class_plan_page.dart';
import 'package:mtc/pages/home_page.dart';
import 'package:mtc/pages/lesson_chart_page.dart';
import 'package:mtc/pages/notifications_page.dart';
import 'package:mtc/resource/constant.dart';

class MainPageController extends GetxController {
  var mtcSelectedPageIndex = 3.obs;
  DateTime? currentBackPressTime;

  late Map<BottomNavigationType, Widget> bottomNavigationMap = {
    BottomNavigationType.lessonChart: LessonChartPage(),
    BottomNavigationType.classPlan: ClassPlanPage(),
    BottomNavigationType.chats: NotificationsPage(),
    BottomNavigationType.home: HomePage(),
  };

  bool isCurrentPage(BottomNavigationType page) {
    return mtcSelectedPageIndex.value == bottomNavigationMap.keys.toList().indexWhere((element) => element == page);
  }

  void selectPageByType(BottomNavigationType pageType) {
    mtcSelectedPageIndex.value = bottomNavigationMap.keys.toList().indexWhere((element) => element == pageType);
  }

  void selectPage(int currentPage) {
    if (currentPage == BottomNavigationType.lessonChart.type) {
      bottomNavigationMap[BottomNavigationType.lessonChart] = LessonChartPage(key: ValueKey(Random().nextInt(255)));
    } else if (currentPage == BottomNavigationType.classPlan.type) {
      bottomNavigationMap[BottomNavigationType.classPlan] = ClassPlanPage(key: ValueKey(Random().nextInt(255)));
    } else if (currentPage == BottomNavigationType.chats.type) {
      bottomNavigationMap[BottomNavigationType.chats] = NotificationsPage(key: ValueKey(Random().nextInt(255)));
    } else if (currentPage == BottomNavigationType.home.type) {
      bottomNavigationMap[BottomNavigationType.home] = HomePage();
    }

    mtcSelectedPageIndex.value = currentPage;
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();

    if (currentBackPressTime == null || now.difference(currentBackPressTime ?? DateTime.now()) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 2),
          content: Text(
            "برای خروج از برنامه یک بار دیگر دکمه برگشت را بزنید.",
            style: TextStyle(fontFamily: Constant.yekanFontFamily, fontWeight: FontWeight.w500, fontSize: MtcApp.appDimens.xRegularFontSize),
            textDirection: TextDirection.rtl,
          ),
        ),
      );
      return Future.value(false);
    }
    return Future.value(true);
  }
}
