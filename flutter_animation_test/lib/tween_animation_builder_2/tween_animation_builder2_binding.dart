import 'package:flutter_animation_test/tween_animation_builder_2/tween_animatoin_builder2_controller.dart';
import 'package:get/get.dart';

class TweenAnimationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TweenAnimationBuilderController());
  }
}
