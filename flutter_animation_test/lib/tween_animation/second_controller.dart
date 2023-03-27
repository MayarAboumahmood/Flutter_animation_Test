import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SecondController extends GetxController {
  late AnimationController animationController;
  RxDouble startHeight = 0.0.obs;
  RxDouble currentHeight = 0.0.obs;
  RxDouble endHeight = 100.0.obs;
  final random = Random();
  RxInt dataSet = 50.obs;

  void changeDate() {
    dataSet.value = random.nextInt(100);
  }
}
