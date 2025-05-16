import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtc/mtc_app.dart';
import 'package:mtc/resource/app_color.dart';
import 'package:mtc/resource/app_string.dart';

class ClassScheduleDetailBottomSheet extends StatelessWidget {
  const ClassScheduleDetailBottomSheet({super.key});

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
            margin: EdgeInsets.only(top: MtcApp.appDimens.mediumSpace,bottom: MtcApp.appDimens.mediumSpace),
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
          Divider(
            height: MtcApp.appDimens.dividerHeight,
            color: AppColor.gray100Color,
            thickness: MtcApp.appDimens.dividerHeight,
          ),
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
                            "کد ارائه :",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "705441",
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
                            "کد درس :",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "705021",
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
                      "عنوان درس :",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                    ),
                    Flexible(
                      child: Text(
                        "انديشه اسلامي(2) (نبوت و امامت)",
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
                      "نام استاد :",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "حبيب اله وظيفه مندرودپشتي",
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
                      "شماره کلاس :",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                    ),
                    Flexible(
                      child: Text(
                        "كلاس 1302 طبقه سوم ساختمان آموزشي- كارگاه كامپيوتر | كلاس 1302 طبقه سوم ساختمان آموزشي- كارگاه كامپي",
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
                            "زمان ارائه :",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Flexible(
                            child: Text(
                              "11:00 تا 14:00 | 14:00 تا 15:00",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
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
                            "روز ارائه :",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "چهارشنبه",
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
                            "تعداد دانشجو :",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "55",
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
                            "تاریخ امتحان :",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "1403/10/29",
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
