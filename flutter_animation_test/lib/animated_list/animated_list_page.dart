import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animated_list_controller.dart';

// ignore: must_be_immutable
class AnimatedListPage extends StatelessWidget {
  AnimatedListController controller = Get.find();
  AnimatedListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to the animated list page'),
        ),
        body: Column(
          children: [
            Expanded(
              child: AnimatedList(
                key: controller.listKey,
                itemBuilder: (context, index, animation) => SlideTransition(
                    position: animation.drive(controller.offset),
                    child: controller.tripTiles[index]),
                initialItemCount: controller.tripTiles.length,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                  height: Get.height * .15,
                  width: Get.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                  ),
                  child: Center(
                      child: Text(
                    "Go back",
                    style: TextStyle(fontSize: Get.width * .05),
                  ))),
            ),
          ],
        ));
  }
}
