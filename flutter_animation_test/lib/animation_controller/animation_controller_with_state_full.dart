import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationControllerWithStateFul extends StatefulWidget {
  const AnimationControllerWithStateFul({super.key});

  @override
  State<AnimationControllerWithStateFul> createState() =>
      _AnimationControllerWithStateFulState();
}

class _AnimationControllerWithStateFulState
    extends State<AnimationControllerWithStateFul>
    with SingleTickerProviderStateMixin {
  late AnimationController _aController;
  late Animation<Color?> _aColor;
  late Animation<double?> _aSize;
  @override
  void initState() {
    super.initState();
    _aController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _aColor =
        ColorTween(begin: Colors.grey, end: Colors.red).animate(_aController);
    // _aController.addListener(() {});
    _aSize = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem(tween: Tween(begin: 30, end: 50), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 50, end: 30), weight: 50)
    ]).animate(_aController);
  }

  @override
  void dispose() {
    super.dispose();
    _aController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("animation controller useing stateful widget"),
        ),
        body: AnimatedBuilder(
            animation: _aController,
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
                              if (_aColor.value == Colors.red) {
                                _aController.reverse();
                              } else {
                                _aController.forward();
                              }
                              //we can check if the animation is complet by using : _aController.isCompleted
                            },
                            child: Icon(
                              Icons.favorite,
                              color: _aColor.value,
                              size: /*_aController.value * 10 + 100*/
                                  _aSize.value! + 50,
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
