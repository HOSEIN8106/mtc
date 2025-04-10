import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtc/controller/main_page_controller.dart';
import 'package:mtc/enumerations/bottom_navigation_type.dart';
import 'package:mtc/mtc_app.dart';
import 'package:mtc/resource/app_color.dart';
import 'package:mtc/resource/app_string.dart';

class MainPage extends StatelessWidget {
  MainPageController controller = Get.find<MainPageController>();
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.insert_chart,
                  color: controller.isCurrentPage(BottomNavigationType.lessonChart) ? (AppColor.primaryColor) : (AppColor.darkBlueColor),
                  size: MtcApp.appDimens.mediumIconSize,
                ),
                label: AppString.lessonChart,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.class_,
                  color: controller.isCurrentPage(BottomNavigationType.classPlan) ? (AppColor.primaryColor) : (AppColor.darkBlueColor),
                  size: MtcApp.appDimens.mediumIconSize,
                ),
                label: AppString.classPlan,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_sharp,
                  color: controller.isCurrentPage(BottomNavigationType.chats) ? (AppColor.primaryColor) : (AppColor.darkBlueColor),
                  size: MtcApp.appDimens.mediumIconSize,
                ),
                label: AppString.chats,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: controller.isCurrentPage(BottomNavigationType.home) ? (AppColor.primaryColor) : (AppColor.darkBlueColor),
                  size: MtcApp.appDimens.mediumIconSize,
                ),
                label: AppString.home,
              ),
            ],
            selectedFontSize: MtcApp.appDimens.mediumIconSize,
            unselectedFontSize: MtcApp.appDimens.mediumIconSize,
            selectedLabelStyle: TextStyle(color: AppColor.primaryColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w700),
            unselectedItemColor: AppColor.tDarkBlueColor,
            unselectedLabelStyle: TextStyle(
              color: AppColor.tDarkBlueColor,
              fontSize: MtcApp.appDimens.xRegularFontSize,
              fontWeight: FontWeight.w700,
            ),
            onTap: controller.selectPage,
            currentIndex: controller.mtcSelectedPageIndex.value,
          ),
        ),
        body: Obx(() => controller.bottomNavigationMap.values.elementAt(controller.mtcSelectedPageIndex.value)),
      ),
    );
  }
}
