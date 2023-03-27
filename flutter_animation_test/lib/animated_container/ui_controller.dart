import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UiController extends GetxController {
  RxDouble theContainerWidth = 200.0.obs;
  RxDouble theContainerHeight = 200.0.obs;
  Rx<Color> theCurrentColor = Colors.red.obs;
  RxString hideMeText = "Hide me".obs;
  RxDouble opacity = 1.0.obs;
  RxDouble textFontSize = 100.0.obs;
  void changeTheBoxSize() {
    if (theContainerHeight.value == 200.0) {
      theContainerHeight.value = 350.0;
      theContainerWidth.value = 350.0;
    } else {
      theContainerHeight.value = 200.0;
      theContainerWidth.value = 200.0;
    }
  }

  void changeTheBoxColor() {
    if (theCurrentColor.value == Colors.red) {
      theCurrentColor.value = Colors.deepPurple;
    } else {
      theCurrentColor.value = Colors.red;
    }
  }

  void changeTheOpacity() {
    if (opacity.value == 1) {
      opacity.value = 0;
      hideMeText.value = "Appear me";
    } else {
      opacity.value = 1;
      hideMeText.value = "Hide me";
    }
  }

  void changeTheTextFontSize() {
    if (textFontSize.value == 100) {
      textFontSize.value = 50;
    } else {
      textFontSize.value = 100;
    }
  }
}
