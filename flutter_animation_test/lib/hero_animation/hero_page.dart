import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('hello to the hero test folx',
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                height: Get.height * .4,
                hoverColor: Colors.amber,
                splashColor: Colors.red,
                animationDuration: const Duration(seconds: 2),
                onPressed: () {
                  Get.toNamed('/TheHeroNextPage');
                },
                child: Hero(
                    tag: 'the first hero',
                    child: Icon(
                      Icons.mood,
                      size: Get.width * .5,
                    )),
              ),
            )
          ],
        ));
  }
}

class TheHeroNextPage extends StatelessWidget {
  const TheHeroNextPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'the first hero',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('this is the hero page'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .05, vertical: Get.height * .1),
              child: const Text(
                  "what the fuck man I can't take this shit any longer someone make it stop right now!!!",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ]),
        ),
      ),
    );
  }
}
