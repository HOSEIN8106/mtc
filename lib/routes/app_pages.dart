import 'package:get/get.dart';
import 'package:mtc/binding/home_page_binding.dart';
import 'package:mtc/binding/splash_binding.dart';
import 'package:mtc/pages/home_page.dart';
import 'package:mtc/routes/app_routes.dart';

import '../pages/spalsh_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.INITIAL, page: () => SplashPage(), binding: SplashBinding()),
    GetPage(name: AppRoutes.HOME_PAGE, page: () => HomePage(), binding: HomePageBinding()),
  ];
}
