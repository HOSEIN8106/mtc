import 'package:flutter/material.dart';
import 'package:mtc/mtc_app.dart';
import 'package:mtc/resource/app_color.dart';
import 'package:mtc/resource/app_string.dart';

class DetailLessonChartBottomSheet extends StatelessWidget {
  const DetailLessonChartBottomSheet({super.key});

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
          Text(
            AppString.detailOfChart,
            style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.mediumFontSize),
          ),
          SizedBox(height: MtcApp.appDimens.mediumFontSize,),
          Row(
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
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: MtcApp.appDimens.xSmallSpace, vertical: MtcApp.appDimens.tinySpace),
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
            ],
          )
        ],
      ),
    );
  }
}
