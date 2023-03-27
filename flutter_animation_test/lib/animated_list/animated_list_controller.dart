// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedListController extends GetxController {
  List<Widget> tripTiles = [];
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  void addThings() {
    List<ThingsToSlide> myList = [
      ThingsToSlide(name: "thing num one ", price: "100"),
      ThingsToSlide(name: "thing num two ", price: "24"),
      ThingsToSlide(name: "thing num three ", price: "55"),
      ThingsToSlide(name: "thing num four ", price: "99"),
      ThingsToSlide(name: "thing num five ", price: "70"),
    ];
    Future toCreateADelayed = Future(() {});
    for (var element in myList) {
      toCreateADelayed = toCreateADelayed.then((_) {
        return Future.delayed(const Duration(milliseconds: 200), () {
          tripTiles.add(element);
          listKey.currentState?.insertItem(tripTiles.length - 1);
        });
      });
    }
  }

  Tween<Offset> offset =
      Tween(begin: const Offset(1, 0), end: const Offset(0, 0));
  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      addThings();
    });
    super.onInit();
  }
}

// ignore: must_be_immutable
class ThingsToSlide extends StatelessWidget {
  String price;
  String name;
  ThingsToSlide({
    Key? key,
    required this.price,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          height: Get.height * .1,
          width: Get.width * .9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(26, 245, 58, 58)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              SizedBox(
                width: Get.width * .03,
              ),
              Text(price)
            ],
          )),
    );
  }
}
