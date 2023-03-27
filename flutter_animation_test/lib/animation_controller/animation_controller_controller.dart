import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationControllerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController aController;
  late Animation<Color?> aColor;
  late Animation<double?> aSize;
  late Animation<double> aCurve;
  late AnimationController theController;
  @override
  void onInit() {
    super.onInit();
    aController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    aCurve = CurvedAnimation(parent: aController, curve: Curves.slowMiddle);
    aColor = ColorTween(begin: Colors.grey, end: Colors.red).animate(aCurve);
    aSize = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem(tween: Tween(begin: 30, end: 50), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 50, end: 30), weight: 50),
    ]).animate(aCurve);
    /* without the curve I it's should be like that: .animate(aController).
    but when I use the curve and put it inside the animation it still can reach the aController using the 
    curve parent.*/
  }

  @override
  void onClose() {
    super.onClose();
    aController.dispose();
  }
}
