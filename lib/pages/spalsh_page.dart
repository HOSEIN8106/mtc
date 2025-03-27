import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtc/controller/splash_page_controller.dart';
import 'package:mtc/resource/app_color.dart';

class SplashPage extends StatelessWidget {
  SplashPageController controller = Get.find<SplashPageController>();

  SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.init();
    return Scaffold(backgroundColor: AppColor.primaryColor, body: Center(child: CircularProgressIndicator(color: Colors.white)));
  }
}
