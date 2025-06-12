import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtc/api/models/lesson_response.dart';
import 'package:mtc/mtc_app.dart';
import 'package:mtc/resource/app_color.dart';
import 'package:mtc/resource/app_string.dart';
import 'package:mtc/utils/utils.dart';

class ClassScheduleDetailBottomSheet extends StatelessWidget {
  final LessonsResponse lessonsResponse;

  const ClassScheduleDetailBottomSheet({super.key, required this.lessonsResponse});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MtcApp.appDimens.xSmallSpace),
          topRight: Radius.circular(MtcApp.appDimens.xSmallSpace),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: MtcApp.appDimens.mediumSpace, bottom: MtcApp.appDimens.mediumSpace),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    AppString.detailOfChart,
                    style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: MtcApp.appDimens.mediumSpace),
                    child: Icon(Icons.close, size: MtcApp.appDimens.mediumIconSize),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: MtcApp.appDimens.dividerHeight, color: AppColor.gray100Color, thickness: MtcApp.appDimens.dividerHeight),
          Padding(
            padding: EdgeInsets.all(MtcApp.appDimens.mediumSpace),
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
                            "کد ارائه : ",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            Utils.replaceDashToNull(lessonsResponse.courseOfferingCode),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            "کد درس : ",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            Utils.replaceDashToNull(lessonsResponse.code),
                            style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
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
                      "عنوان درس : ",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                    ),
                    Flexible(
                      child: Text(
                        Utils.replaceDashToNull(lessonsResponse.title),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MtcApp.appDimens.smallSpace),
                Row(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "نام استاد : ",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      Utils.replaceDashToNull(lessonsResponse.instructor?.name),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
                    ),
                  ],
                ),
                SizedBox(height: MtcApp.appDimens.smallSpace),
                Row(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "شماره کلاس : ",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                    ),
                    Flexible(
                      child: Text(
                        Utils.replaceDashToNull(lessonsResponse.classroomNumber),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MtcApp.appDimens.smallSpace),
                Row(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.rtl,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "زمان ارائه : ",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Flexible(
                            child: Text(
                              Utils.replaceDashToNull(lessonsResponse.offeringTime),
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
                    ),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            "روز ارائه : ",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            Utils.replaceDashToNull(lessonsResponse.offeringDay),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MtcApp.appDimens.smallSpace),
                Row(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            "تعداد دانشجو : ",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            Utils.replaceDashToNull(lessonsResponse.studentsCount.toString()),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            "تاریخ امتحان : ",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            Utils.replaceDashToNull(lessonsResponse.examDate),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
