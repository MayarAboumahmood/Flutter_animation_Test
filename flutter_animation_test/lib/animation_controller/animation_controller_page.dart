import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animation_controller_controller.dart';

// ignore: must_be_immutable
class AnimationControllerPage extends StatelessWidget {
  AnimationControllerPage({super.key});
  AnimationControllerController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("animation controller useing GetX"),
        ),
        body: AnimatedBuilder(
            animation: controller.aController,
            builder: (BuildContext context, _) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: Get.height * .1),
                    Center(
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                            onDoubleTap: () {
                              if (controller.aColor.value == Colors.red) {
                                controller.aController.reverse();
                              } else {
                                controller.aController.forward();
                              }
                              //we can check if the animation is complet by using : _aController.isCompleted
                            },
                            child: Icon(
                              Icons.favorite,
                              color: controller.aColor.value,
                              size: /*_aController.value * 10 + 100*/
                                  controller.aSize.value! + 50,
                            )),
                      ),
                    ),
                    SizedBox(height: Get.height * .1),
                    Text(
                      'douple click on the favorite icon :)',
                      style: TextStyle(
                          color: Colors.red, fontSize: Get.width * .025),
                    ),
                    SizedBox(height: Get.height * .1),
                    Container(
                        color: Colors.red,
                        child: TextButton(
                          child: const Text('go back'),
                          onPressed: () {
                            Get.toNamed('/');
                          },
                        )),
                  ],
                ),
              );
            }));
  }
}
