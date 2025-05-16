import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtc/controller/class_schedule_page_controller.dart';
import 'package:mtc/mtc_app.dart';
import 'package:mtc/resource/app_color.dart';
import 'package:mtc/resource/app_string.dart';

class MyClassSchedulePage extends StatelessWidget {
  MyClassSchedulePage({super.key});

  ClassSchedulePageController controller = Get.find<ClassSchedulePageController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(MtcApp.appDimens.mediumSpace),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Center(
                    child: Text(
                      AppString.myClassSchedule,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.xMediumFontSize),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: MtcApp.appDimens.mediumSpace),
                      child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(MtcApp.appDimens.mediumSpace),
                    topRight: Radius.circular(MtcApp.appDimens.mediumSpace),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(MtcApp.appDimens.mediumSpace),
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: AppColor.bGreenColor,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(MtcApp.appDimens.smallSpace)),
                            borderSide: BorderSide(width: MtcApp.appDimens.dividerHeight, color: AppColor.bGreenColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(MtcApp.appDimens.smallSpace)),
                            borderSide: BorderSide(width: MtcApp.appDimens.dividerHeight, color: AppColor.bGreenColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(MtcApp.appDimens.smallSpace)),
                            borderSide: BorderSide(width: MtcApp.appDimens.dividerHeight),
                          ),
                          hintText: AppString.search,
                          hintStyle: TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: MtcApp.appDimens.mediumSpace),
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: MtcApp.appDimens.smallSpace),
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(MtcApp.appDimens.xSmallSpace)),
                              child: Padding(
                                padding: EdgeInsets.all(MtcApp.appDimens.xSmallSpace),
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 7,
                                      child: Column(
                                        children: [
                                          Row(
                                            textDirection: TextDirection.rtl,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  textDirection: TextDirection.rtl,
                                                  children: [
                                                    Text(
                                                      "کد ارائه :",
                                                      textDirection: TextDirection.rtl,
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: AppColor.tGrayColor,
                                                        fontSize: MtcApp.appDimens.xRegularFontSize,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      "705441",
                                                      style: TextStyle(
                                                        color: AppColor.tDarkBlueColor,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: MtcApp.appDimens.mediumFontSize,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  textDirection: TextDirection.rtl,
                                                  children: [
                                                    Text(
                                                      "کد درس :",
                                                      textDirection: TextDirection.rtl,
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: AppColor.tGrayColor,
                                                        fontSize: MtcApp.appDimens.xRegularFontSize,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      "705021",
                                                      style: TextStyle(
                                                        color: AppColor.tDarkBlueColor,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: MtcApp.appDimens.mediumFontSize,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: MtcApp.appDimens.smallSpace),
                                          Row(
                                            textDirection: TextDirection.rtl,
                                            children: [
                                              Text(
                                                "عنوان درس :",
                                                textDirection: TextDirection.rtl,
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: AppColor.tGrayColor,
                                                  fontSize: MtcApp.appDimens.xRegularFontSize,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Flexible(
                                                child: Text(
                                                  "انديشه اسلامي(2) (نبوت و امامت)",
                                                  textDirection: TextDirection.rtl,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: AppColor.tDarkBlueColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: MtcApp.appDimens.mediumFontSize,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: GestureDetector(
                                        onTap: () {
                                          controller.openDetailLessonChartBottomSheet();
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: MtcApp.appDimens.xSmallSpace,
                                            vertical: MtcApp.appDimens.tinySpace,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColor.bGreenColor,
                                            borderRadius: BorderRadius.circular(MtcApp.appDimens.smallSpace),
                                          ),
                                          child: Text(
                                            AppString.show,
                                            textAlign: TextAlign.center,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: MtcApp.appDimens.mediumFontSize,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
