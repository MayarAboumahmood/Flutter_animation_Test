import 'package:flutter/material.dart';
import 'package:flutter_animation_test/tween_animation_builder_2/tween_animatoin_builder2_controller.dart';
import 'package:get/get.dart';

class TweenPage extends StatelessWidget {
  const TweenPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TweenAnimationBuilderController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: MyTweenAnimationBuilder(),
      ),
      body: Column(children: [
        SizedBox(height: Get.height * .1),
        const Center(
          child: Text("hi hi !!",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blueGrey)),
        ),
        SizedBox(height: Get.height * .1),
        TextButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(
                  Size(Get.width * .12, Get.height * .1)),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
                "click here to make the animation go on fome zero again",
                style: TextStyle(color: Colors.black))),
        SizedBox(
          height: Get.height * .1,
        ),
      ]),
    );
  }
}

// ignore: must_be_immutable
class MyTweenAnimationBuilder extends StatelessWidget {
  late AnimationController aController;
  late Animation<double> animationForA;
  MyTweenAnimationBuilder({super.key});
  TweenAnimationBuilderController controller = Get.find();
  double theNumber = 1;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      builder: (BuildContext context, double theValForTheTween, child) {
        return Opacity(
          opacity: theValForTheTween,
          child: Padding(
            padding: EdgeInsets.only(top: theValForTheTween * 25),
            child: child,
          ),
        );
      },
      tween: Tween<double>(begin: 0, end: theNumber),
      duration: const Duration(seconds: 1),
      child: const Text("hello in the tween animation builder"),
      onEnd: () {
        // i need to try to use animation controller to solve the problem i am in .
        theNumber == 1 ? 0 : 1;
      },
    );
  }
}

class TestForDelete extends StatefulWidget {
  const TestForDelete({super.key});

  @override
  State<TestForDelete> createState() => _TestForDeleteState();
}

class _TestForDeleteState extends State<TestForDelete>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
