import 'package:flutter_animation_test/tween_animation/second_controller.dart';
import 'package:get/get.dart';

class SecondBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SecondController());
  }
}
