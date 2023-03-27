import 'package:get/get.dart';

import 'animated_list_controller.dart';

class AnimatedListBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AnimatedListController());
  }
}
