import 'package:get/get.dart';
import 'package:mtc/binding/class_plan_page_binding.dart';
import 'package:mtc/binding/home_page_binding.dart';
import 'package:mtc/binding/lesson_chart_page_binding.dart';
import 'package:mtc/binding/main_page_binding.dart';
import 'package:mtc/binding/notifications_page_binding.dart';
import 'package:mtc/binding/splash_binding.dart';
import 'package:mtc/pages/class_plan_page.dart';
import 'package:mtc/pages/home_page.dart';
import 'package:mtc/pages/lesson_chart_page.dart';
import 'package:mtc/pages/main_page.dart';
import 'package:mtc/pages/notifications_page.dart';
import 'package:mtc/routes/app_routes.dart';

import '../pages/spalsh_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.INITIAL, page: () => SplashPage(), binding: SplashBinding()),
    GetPage(name: AppRoutes.MAIN_PAGE, page: () => MainPage(), binding: MainPageBinding()),
    GetPage(name: AppRoutes.LESSON_CHART_PAGE, page: () => LessonChartPage(), binding: LessonChartPageBinding()),
    GetPage(name: AppRoutes.CLASS_PLAN_PAGE, page: () => ClassPlanPage(), binding: ClassPlanPageBinding()),
    GetPage(name: AppRoutes.NOTIFICATIONS_PAGE, page: () => NotificationsPage(), binding: NotificationsPageBinding()),
    GetPage(name: AppRoutes.HOME_PAGE, page: () => HomePage(), binding: HomePageBinding()),
  ];
}
