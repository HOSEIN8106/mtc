import 'package:flutter/material.dart';
import 'package:mtc/enumerations/device_type.dart';
import 'package:mtc/mtc_app.dart';
import 'package:mtc/resource/app_color.dart';
import 'package:mtc/resource/app_dimens.dart';
import 'package:mtc/resource/app_string.dart';
import 'package:mtc/resource/constant.dart';

class AcademicChartPage extends StatelessWidget {
  const AcademicChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: AppColor.darkBlue, borderRadius: BorderRadius.all(Radius.circular(MtcApp.appDimens.smallSpace))),
              margin: EdgeInsets.symmetric(horizontal: MtcApp.appDimens.xxxLargeSpace, vertical: MtcApp.appDimens.largeSpace),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(MtcApp.appDimens.smallSpace)),
                child: DefaultTabController(
                  initialIndex: 0,
                  length: 2,
                  child: TabBar(
                    onTap: (currentTab) {
                      // this.currentTab.value = currentTab;
                    },
                    indicatorColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    overlayColor: WidgetStateColor.transparent,
                    indicator: BoxDecoration(
                      color: AppColor.darkBlue500,
                      borderRadius: BorderRadius.all(Radius.circular(MtcApp.appDimens.smallSpace)),
                    ),
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: MtcApp.appDimens.xRegularFontSize,
                      fontFamily: Constant.yekanFontFamily,
                    ),
                    tabs: [Tab(text: AppString.bachelorsDegree), Tab(text: AppString.associateDegree)],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: AppColor.accentColor,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(MtcApp.appDimens.mediumSpace),
                        child: Text(
                          AppString.weeklyPlan,
                          style: TextStyle(color: AppColor.tDarkBlueColor, fontSize: MtcApp.appDimens.xMediumFontSize, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: MtcApp.appDimens.mediumSpace),
                        padding: EdgeInsets.all(MtcApp.appDimens.mediumSpace),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(MtcApp.appDimens.smallSpace))),
                        child: Column(
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "عنوان",
                                      style: TextStyle(
                                        color: AppColor.tDarkBlueColor,
                                        fontSize: MtcApp.appDimens.mediumFontSize,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("توضیحات", style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize)),
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                                Icon(Icons.download, color: AppColor.tDarkBlueColor, size: MtcApp.appDimens.mediumIconSize),
                              ],
                            ),
                            Divider(color: AppColor.gray100Color, thickness: MtcApp.appDimens.dividerHeight),
                            Row(
                              textDirection: TextDirection.rtl,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "عنوان",
                                      style: TextStyle(
                                        color: AppColor.tDarkBlueColor,
                                        fontSize: MtcApp.appDimens.mediumFontSize,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("توضیحات", style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize)),
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                                Icon(Icons.download, color: AppColor.tDarkBlueColor, size: MtcApp.appDimens.mediumIconSize),
                              ],
                            ),
                            Divider(color: AppColor.gray100Color, thickness: MtcApp.appDimens.dividerHeight),
                            Row(
                              textDirection: TextDirection.rtl,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "عنوان",
                                      style: TextStyle(
                                        color: AppColor.tDarkBlueColor,
                                        fontSize: MtcApp.appDimens.mediumFontSize,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("توضیحات", style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize)),
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                                Icon(Icons.download, color: AppColor.tDarkBlueColor, size: MtcApp.appDimens.mediumIconSize),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(MtcApp.appDimens.mediumSpace),
                        child: Text(
                          AppString.academicChart,
                          style: TextStyle(color: AppColor.tDarkBlueColor, fontSize: MtcApp.appDimens.xMediumFontSize, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: MtcApp.appDimens.mediumSpace,
                          left: MtcApp.appDimens.mediumSpace,
                          bottom: MtcApp.appDimens.mediumSpace,
                        ),
                        padding: EdgeInsets.all(MtcApp.appDimens.mediumSpace),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(MtcApp.appDimens.smallSpace))),
                        child: Column(
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "عنوان",
                                      style: TextStyle(
                                        color: AppColor.tDarkBlueColor,
                                        fontSize: MtcApp.appDimens.mediumFontSize,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("توضیحات", style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize)),
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                                Icon(Icons.download, color: AppColor.tDarkBlueColor, size: MtcApp.appDimens.mediumIconSize),
                              ],
                            ),
                            Divider(color: AppColor.gray100Color, thickness: MtcApp.appDimens.dividerHeight),
                            Row(
                              textDirection: TextDirection.rtl,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "عنوان",
                                      style: TextStyle(
                                        color: AppColor.tDarkBlueColor,
                                        fontSize: MtcApp.appDimens.mediumFontSize,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("توضیحات", style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize)),
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                                Icon(Icons.download, color: AppColor.tDarkBlueColor, size: MtcApp.appDimens.mediumIconSize),
                              ],
                            ),
                            Divider(color: AppColor.gray100Color, thickness: MtcApp.appDimens.dividerHeight),
                            Row(
                              textDirection: TextDirection.rtl,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "عنوان",
                                      style: TextStyle(
                                        color: AppColor.tDarkBlueColor,
                                        fontSize: MtcApp.appDimens.mediumFontSize,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("توضیحات", style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize)),
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                                Icon(Icons.download, color: AppColor.tDarkBlueColor, size: MtcApp.appDimens.mediumIconSize),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
