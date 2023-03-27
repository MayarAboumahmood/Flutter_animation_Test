import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
                'hello to the landing in the animation learning application')),
        body: Center(
          child: Column(children: [
            SizedBox(height: Get.height * .01),
            TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(Get.width * .12, Get.height * .1)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/FirstPage');
                },
                child: const Text("Go to first page",
                    style: TextStyle(color: Colors.black))),
            SizedBox(height: Get.height * .01),
            TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(Get.width * .12, Get.height * .1)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/TweenAnimationBuilder');
                },
                child: const Text("Go to TweenAnimationBuilder page",
                    style: TextStyle(color: Colors.black))),
            SizedBox(height: Get.height * .01),
            TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(Get.width * .12, Get.height * .1)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/HeroPage');
                },
                child: const Text("Go to Hero page",
                    style: TextStyle(color: Colors.black))),
            SizedBox(height: Get.height * .01),
            TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(Get.width * .12, Get.height * .1)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/AnimationController2');
                },
                child: const Text(
                    "Go to Animation Controller Page with stateful Widget",
                    style: TextStyle(color: Colors.black))),
            SizedBox(height: Get.height * .01),
            TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(Get.width * .12, Get.height * .1)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/AnimationController');
                },
                child: const Text("Go to Animation Controller Page using GetX",
                    style: TextStyle(color: Colors.black))),
            SizedBox(height: Get.height * .01),
            TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(Get.width * .12, Get.height * .1)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/AnimatedListPage');
                },
                child: const Text("Go to Animated List Page",
                    style: TextStyle(color: Colors.black))),
            SizedBox(height: Get.height * .01),
          ]),
        ),
      ),
    );
  }
}
