import 'package:flutter/material.dart';
import 'package:flutter_animation_test/hero_animation/hero_page.dart';
import 'package:flutter_animation_test/landing_page.dart';
import 'package:flutter_animation_test/tween_animation/second_binding.dart';
import 'package:flutter_animation_test/tween_animation/second_page.dart';
import 'package:flutter_animation_test/tween_animation_builder_2/tween_animation_builder2_binding.dart';
import 'package:flutter_animation_test/tween_animation_builder_2/tween_page.dart';
import 'package:get/get.dart';

import 'animated_container/first_page.dart';
import 'animated_container/ui_binding.dart';
import 'animated_list/animated_list_binding.dart';
import 'animated_list/animated_list_page.dart';
import 'animation_controller/animation_controller_binding.dart';
import 'animation_controller/animation_controller_page.dart';
import 'animation_controller/animation_controller_with_state_full.dart';

void main() => runApp(const MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/FirstPage', page: () => FirstPage(), binding: UiBinding()),
        GetPage(
            name: '/SecondPage',
            page: () => SecondPage(),
            binding: SecondBinding()),
        GetPage(
            name: '/TweenAnimationBuilder',
            page: () => const TweenPage(),
            binding: TweenAnimationBinding()),
        GetPage(
          name: '/HeroPage',
          page: () => const HeroPage(),
        ),
        GetPage(
            name: '/AnimationController',
            page: () => AnimationControllerPage(),
            binding: AimationControllerBinding()),
        GetPage(
          name: '/AnimationController2',
          page: () => const AnimationControllerWithStateFul(),
        ),
        GetPage(name: '/', page: () => const LandingPage()),
        GetPage(name: '/TheHeroNextPage', page: () => const TheHeroNextPage()),
        GetPage(
            name: '/AnimatedListPage',
            page: () => AnimatedListPage(),
            binding: AnimatedListBinding()),
      ],
    );
  }
}
