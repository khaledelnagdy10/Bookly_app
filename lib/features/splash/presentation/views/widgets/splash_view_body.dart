import 'package:bookly_app/core/utils/assets.dart';

import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();

    InitSlidingAnimation();

    navigateToHomeView();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kDurationTransiction);
      GoRouter.of(context).push('/homeView');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          scale: 1.5,
        ),
        SlidingAnimationText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void InitSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
