import 'package:get/get.dart';
import 'package:mtc/controller/notifications_page_controller.dart';

class NotificationsPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationPageController>(() {
      return NotificationPageController();
    });
  }
}
