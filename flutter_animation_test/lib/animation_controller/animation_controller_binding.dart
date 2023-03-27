import 'package:get/get.dart';

import 'animation_controller_controller.dart';

class AimationControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AnimationControllerController());
  }
}
