import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mtc/widgets/login_dialog.dart';

class HomePageController extends GetxController {
  void openLoginDialog() {
    Get.dialog(LoginDialog());
  }
}
