import 'package:get/get.dart';
import 'package:mtc/enumerations/device_type.dart';
import 'package:mtc/mtc_app.dart';

class AppDimens {
  static late DeviceType currentDeviceType;

  double veryTinySpace = 2;
  double tinySpace = 4;
  double xTinySpace = 6;
  double smallSpace = 8;
  double xSmallSpace = 12;
  double mediumSpace = 16;
  double xMediumSpace = 20;
  double largeSpace = 24;
  double xLargeSpace = 32;
  double xxLargeSpace = 36;
  double xxxLargeSpace = 44;

  double smallFontSize = 8;
  double xSmallFontSize = 10;
  double regularFontSize = 12;
  double xRegularFontSize = 14;
  double mediumFontSize = 16;
  double xMediumFontSize = 18;
  double xxMediumFontSize = 20;
  double xxxMediumFontSize = 24;
  double largeFontSize = 28;
  double xLargeFontSize = 32;
  double xxLargeFontSize = 36;
  double xxxLargeFontSize = 44;

  double standardIconSize = 18;

  double smallIconSize = 20;
  double mediumIconSize = 24;
  double largeIconSize = 30;

  double inputBoxHeight = 50;
  double checkBoxSize = 40;
  double buttonSize = 50;
  double buttonSmallSize = 42;

  double appBarHeight = 60;
  double dividerHeight = 1;

  setDividerHeight(double value) {
    dividerHeight = value;
  }

  setAppBarHeight(double value) {
    appBarHeight = value;
  }

  setButtonSmallSize(double value) {
    buttonSmallSize = value;
  }

  setButtonSize(double value) {
    buttonSize = value;
  }

  setCheckBoxSize(double value) {
    checkBoxSize = value;
  }

  setInputBoxHeight(double value) {
    inputBoxHeight = value;
  }

  setLargeIconSize(double value) {
    largeIconSize = value;
  }

  setMediumIconSize(double value) {
    mediumIconSize = value;
  }

  setSmallIconSize(double value) {
    smallIconSize = value;
  }

  setStandardIconSize(double value) {
    standardIconSize = value;
  }

  setXxxLargeFontSize(double value) {
    xxxLargeFontSize = value;
  }

  setXxLargeFontSize(double value) {
    xxLargeFontSize = value;
  }

  setXLargeFontSize(double value) {
    xLargeFontSize = value;
  }

  setLargeFontSize(double value) {
    largeFontSize = value;
  }

  setXxxMediumFontSize(double value) {
    xxxMediumFontSize = value;
  }

  setXxMediumFontSize(double value) {
    xxMediumFontSize = value;
  }

  setXMediumFontSize(double value) {
    xMediumFontSize = value;
  }

  setMediumFontSize(double value) {
    mediumFontSize = value;
  }

  setXRegularFontSize(double value) {
    xRegularFontSize = value;
  }

  setRegularFontSize(double value) {
    regularFontSize = value;
  }

  setXSmallFontSize(double value) {
    xSmallFontSize = value;
  }

  setSmallFontSize(double value) {
    smallFontSize = value;
  }

  setXxxLargeSpace(double value) {
    xxxLargeSpace = value;
  }

  setXxLargeSpace(double value) {
    xxLargeSpace = value;
  }

  setXLargeSpace(double value) {
    xLargeSpace = value;
  }

  setLargeSpace(double value) {
    largeSpace = value;
  }

  setXMediumSpace(double value) {
    xMediumSpace = value;
  }

  setMediumSpace(double value) {
    mediumSpace = value;
  }

  setXSmallSpace(double value) {
    xSmallSpace = value;
  }

  setSmallSpace(double value) {
    smallSpace = value;
  }

  setXTinySpace(double value) {
    xTinySpace = value;
  }

  setTinySpace(double value) {
    tinySpace = value;
  }

  setVeryTinySpace(double value) {
    veryTinySpace = value;
  }

  double calculateSize(double appDimen) {
    if (Get.width < 360) {
      currentDeviceType = DeviceType.smallPhone;
      return (appDimen * 320) / 400;
    } else if (Get.width >= 360 && Get.width <= 390) {
      currentDeviceType = DeviceType.mediumPhone;
      return (appDimen * 380) / 400;
    } else if (Get.width > 391 && Get.width <= 480) {
      currentDeviceType = DeviceType.largePhone;
      return appDimen;
    } else if (Get.width >= 481 && Get.width <= 768) {
      currentDeviceType = DeviceType.tablet;
      double tempAppDimen = appDimen;
      if (tempAppDimen < 0) {
        tempAppDimen = appDimen.abs();
        if (tempAppDimen * 1.2 < (tempAppDimen * 768) / 400) {
          return -(tempAppDimen * 1.2);
        } else {
          return -((tempAppDimen * 768) / 400);
        }
      } else {
        if (tempAppDimen * 1.2 < (tempAppDimen * 768) / 400) {
          return tempAppDimen * 1.2;
        } else {
          return (tempAppDimen * 768) / 400;
        }
      }
    } else if (Get.width >= 769) {
      currentDeviceType = DeviceType.tablet;
      double tempAppDimen = appDimen;
      if (tempAppDimen < 0) {
        tempAppDimen = appDimen.abs();
        if (tempAppDimen * 1.2 < (tempAppDimen * 768) / 400) {
          return -(tempAppDimen * 1.2);
        } else {
          return -((tempAppDimen * 800) / 400);
        }
      } else {
        if (tempAppDimen * 1.2 < (tempAppDimen * 768) / 400) {
          return tempAppDimen * 1.2;
        } else {
          return (tempAppDimen * 800) / 400;
        }
      }
    } else {
      currentDeviceType = DeviceType.largeTablet;
      return (appDimen * 600) / 400;
    }
  }

  static void initAppDimen() {
    print("Device Size ==========> ${Get.size}");
    MtcApp.appDimens = AppDimens();
    MtcApp.appDimens.setVeryTinySpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.veryTinySpace));
    MtcApp.appDimens.setTinySpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.tinySpace));
    MtcApp.appDimens.setXTinySpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xTinySpace));
    MtcApp.appDimens.setSmallSpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.smallSpace));
    MtcApp.appDimens.setXSmallSpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xSmallSpace));
    MtcApp.appDimens.setMediumSpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.mediumSpace));
    MtcApp.appDimens.setXMediumSpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xMediumSpace));
    MtcApp.appDimens.setLargeSpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.largeSpace));
    MtcApp.appDimens.setXLargeSpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xLargeSpace));
    MtcApp.appDimens.setXxLargeSpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xxLargeSpace));
    MtcApp.appDimens.setXxxLargeSpace(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xxxLargeSpace));

    MtcApp.appDimens.setSmallFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.smallFontSize));
    MtcApp.appDimens.setXSmallFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xSmallFontSize));
    MtcApp.appDimens.setRegularFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.regularFontSize));
    MtcApp.appDimens.setXRegularFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xRegularFontSize));
    MtcApp.appDimens.setMediumFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.mediumFontSize));
    MtcApp.appDimens.setXMediumFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xMediumFontSize));
    MtcApp.appDimens.setXxMediumFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xxMediumFontSize));
    MtcApp.appDimens.setXxxMediumFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xxxMediumFontSize));
    MtcApp.appDimens.setLargeFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.largeFontSize));
    MtcApp.appDimens.setXLargeFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xLargeFontSize));
    MtcApp.appDimens.setXxLargeFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xxLargeFontSize));
    MtcApp.appDimens.setXxxLargeFontSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.xxxLargeFontSize));

    MtcApp.appDimens.setStandardIconSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.standardIconSize));

    MtcApp.appDimens.setSmallIconSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.smallIconSize));
    MtcApp.appDimens.setMediumIconSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.mediumIconSize));
    MtcApp.appDimens.setLargeIconSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.largeIconSize));

    MtcApp.appDimens.setInputBoxHeight(MtcApp.appDimens.calculateSize(MtcApp.appDimens.inputBoxHeight));

    MtcApp.appDimens.setCheckBoxSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.checkBoxSize));
    MtcApp.appDimens.setButtonSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.buttonSize));
    MtcApp.appDimens.setButtonSmallSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.buttonSmallSize));

    MtcApp.appDimens.setAppBarHeight(MtcApp.appDimens.calculateSize(MtcApp.appDimens.appBarHeight));
    MtcApp.appDimens.setDividerHeight(MtcApp.appDimens.calculateSize(MtcApp.appDimens.dividerHeight));

    MtcApp.appDimens.setTabletSize(MtcApp.appDimens);
  }

  void setTabletSize(AppDimens appDimens) {
    if (AppDimens.currentDeviceType == DeviceType.tablet) {
      ///for tablet
      // appDimens.setButtonSize(320);
    } else {
      /// for else of condition
      // appDimens.setButtonSize(MtcApp.appDimens.calculateSize(MtcApp.appDimens.buttonSize));
    }
  }
}
