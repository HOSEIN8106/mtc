import 'package:get/get.dart';
import 'package:mtc/controller/chats_page_controller.dart';

class ChatsPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatsPageController>(() {
      return ChatsPageController();
    });
  }
}
