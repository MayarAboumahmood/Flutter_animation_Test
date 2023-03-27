import 'package:flutter/material.dart';
import 'package:flutter_animation_test/animated_container/ui_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  UiController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("hello world"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * .1,
                ),
                Obx(
                  () => AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: controller.theContainerHeight.toDouble(),
                    width: controller.theContainerWidth.toDouble(),
                    decoration:
                        BoxDecoration(color: controller.theCurrentColor.value),
                    child: Center(
                      child: Text(
                        "another Helloo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: controller.theContainerWidth * .08,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * .1,
                ),
                TextButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                          Size(Get.width * .12, Get.height * .1)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      controller.changeTheBoxSize();
                    },
                    child: const Text("tap me to change the box size please ):",
                        style: TextStyle(color: Colors.black))),
                SizedBox(height: Get.height * .01),
                TextButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                          Size(Get.width * .12, Get.height * .1)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      controller.changeTheBoxColor();
                    },
                    child: const Text(
                        "tap me to change the colors for some stuff)",
                        style: TextStyle(color: Colors.black))),
                Obx(() => AnimatedOpacity(
                    duration: const Duration(seconds: 1),
                    opacity: controller.opacity.value,
                    child: const Text(
                      'hide me',
                      style: TextStyle(color: Colors.green),
                    ))),
                SizedBox(height: Get.height * .01),
                TextButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(Get.width * .25, Get.height * .1)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    controller.changeTheOpacity();
                  },
                  child: Obx(() => Text(controller.hideMeText.toString(),
                      style: const TextStyle(color: Colors.black))),
                ),
                Obx(
                  () => AnimatedDefaultTextStyle(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: controller.textFontSize.value,
                        backgroundColor: controller.theCurrentColor.value),
                    duration: const Duration(seconds: 1),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        Text("what the fuck man!!"),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Get.height * .1),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(Get.width * .1),
                  ),
                  child: TextButton(
                      onPressed: () {
                        controller.changeTheTextFontSize();
                      },
                      child: const Text(
                          "click here to change the text font size")),
                ),
                SizedBox(height: Get.height * .1),
              ],
            ),
          ),
        ));
  }
}
