import 'package:flutter/material.dart';
import 'package:flutter_animation_test/tween_animation/second_controller.dart';
import 'package:get/get.dart';

import 'bar_chart_painter.dart';

// ignore: must_be_immutable
class SecondPage extends StatelessWidget {
  SecondController controller = Get.find();
  SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Get.toNamed(
                  '/I am sorry but this button is not worked right now');
            },
            backgroundColor: Colors.amber,
            splashColor: Colors.white10,
            label: const Text("Go back to the first page!")),
        appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text("hello in the tweenAnimation concept")),
        body: Column(
          children: [
            Center(
                child: Obx(
              () => CustomPaint(
                size: const Size(700.0, 100.0),
                painter: BarChartPainter(controller.dataSet.toDouble()),
              ),
            )),
            SizedBox(height: Get.height * .2),
            TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(Get.width * .2, Get.height * .1)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amber),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  controller.changeDate();
                },
                child: const Text("tap me to change data pleace ):",
                    style: TextStyle(color: Colors.white))),
          ],
        ));
  }
}
