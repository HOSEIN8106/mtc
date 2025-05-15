import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtc/mtc_app.dart';
import 'package:mtc/resource/app_color.dart';
import 'package:mtc/resource/app_string.dart';

class LoginDialog extends StatelessWidget {
  LoginDialog({super.key});

  var isObscureText = true.obs;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: MtcApp.appDimens.mediumSpace),
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(MtcApp.appDimens.xSmallSpace))),
        child: Wrap(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: MtcApp.appDimens.smallSpace),
                  child: Text(
                    AppString.goToPortal,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColor.tDarkBlueColor, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.xMediumFontSize),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: MtcApp.appDimens.mediumSpace,
                    left: MtcApp.appDimens.mediumSpace,
                    top: MtcApp.appDimens.xLargeSpace,
                    bottom: MtcApp.appDimens.tinySpace,
                  ),
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
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
                      hintText: AppString.username,
                      hintStyle: TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: MtcApp.appDimens.mediumSpace,
                    left: MtcApp.appDimens.mediumSpace,
                    top: MtcApp.appDimens.tinySpace,
                    bottom: MtcApp.appDimens.smallSpace,
                  ),
                  child: Obx(
                    () => TextField(
                      textAlign: TextAlign.right,
                      obscureText: isObscureText.value,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: GestureDetector(
                          onTap: () {
                            isObscureText.value = !isObscureText.value;
                          },
                          child: Icon(isObscureText.value ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                        ),
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
                        hintText: AppString.password,
                        hintStyle: TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(MtcApp.appDimens.mediumSpace),
                  padding: EdgeInsets.symmetric(vertical: MtcApp.appDimens.xSmallSpace),
                  decoration: BoxDecoration(
                    color: AppColor.bGreenColor,
                    borderRadius: BorderRadius.all(Radius.circular(MtcApp.appDimens.xSmallSpace)),
                  ),
                  child: Center(
                    child: Text(
                      AppString.login,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: MtcApp.appDimens.xMediumFontSize),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
