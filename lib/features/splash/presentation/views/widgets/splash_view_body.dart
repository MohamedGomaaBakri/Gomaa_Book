import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gomaabook/core/utils/assets.dart';
import 'package:gomaabook/features/home/presentation/views/home_page.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliddinganimation;

  @override
  void initState() {
    super.initState();

    slidingAnimation();

    navigateToHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlideTransition(
          position: sliddinganimation,
          child: const Text(
            'Books For Free',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  void navigateToHomePage() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(const HomePage(), transition: Transition.leftToRightWithFade);
      },
    );
  }

  void slidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    sliddinganimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    sliddinganimation.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
