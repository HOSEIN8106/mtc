import 'package:flutter/material.dart';
import 'package:mtc/api/models/lesson_response.dart';
import 'package:mtc/mtc_app.dart';
import 'package:mtc/resource/app_color.dart';
import 'package:mtc/utils/utils.dart';

import '../resource/app_string.dart';

class LessonItem extends StatelessWidget {
  final LessonsResponse lessonsResponse;
  final VoidCallback onShowItemClick;

  const LessonItem({super.key, required this.lessonsResponse, required this.onShowItemClick});

  @override
  Widget build(BuildContext context) {
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
                              "کد ارائه : ",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              Utils.replaceDashToNull(lessonsResponse.courseOfferingCode),
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
                              "کد درس : ",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              Utils.replaceDashToNull(lessonsResponse.code),
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
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  onShowItemClick.call();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: MtcApp.appDimens.xSmallSpace, vertical: MtcApp.appDimens.tinySpace),
                  decoration: BoxDecoration(color: AppColor.bGreenColor, borderRadius: BorderRadius.circular(MtcApp.appDimens.smallSpace)),
                  child: Text(
                    AppString.show,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(color: Colors.white, fontSize: MtcApp.appDimens.mediumFontSize, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
