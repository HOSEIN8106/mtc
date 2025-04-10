import 'package:flutter/material.dart';
import 'package:mtc/mtc_app.dart';
import 'package:mtc/resource/app_color.dart';
import 'package:mtc/resource/app_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle, size: MtcApp.appDimens.largeIconSize, color: Colors.white),
                  SizedBox(width: MtcApp.appDimens.smallSpace),
                  Text(AppString.goToPortal, style: TextStyle(color: Colors.white, fontSize: MtcApp.appDimens.mediumFontSize)),
                  Expanded(child: SizedBox()),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(MtcApp.appDimens.tinySpace),
                    decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: Center(child: Icon(Icons.logout, color: AppColor.redColor, size: MtcApp.appDimens.standardIconSize)),
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
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.all(MtcApp.appDimens.mediumSpace),
                      child: Text(
                        AppString.newsAndNotifications,
                        style: TextStyle(color: AppColor.tDarkBlueColor, fontSize: MtcApp.appDimens.xMediumFontSize, fontWeight: FontWeight.bold),
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
                                child: Column(
                                  textDirection: TextDirection.rtl,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "تایتل اصلی  خبر",
                                      style: TextStyle(
                                        color: AppColor.tDarkBlueColor,
                                        fontSize: MtcApp.appDimens.mediumFontSize,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("توضیحات خبر", style: TextStyle(color: AppColor.tGrayColor, fontSize: MtcApp.appDimens.xRegularFontSize)),
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
