import 'package:flutter_animation_test/animated_container/ui_controller.dart';
import 'package:get/get.dart';

class UiBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UiController());
  }
}
