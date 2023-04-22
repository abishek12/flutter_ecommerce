import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../custom/utils/icon_list.dart';
import '../../custom/widgets/app_text.dart';
import '../helper/on_intro_end.dart';
import '../utils/onboarding_list.dart';
import 'dot_decorator.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final introKey = GlobalKey<IntroductionScreenState>();
    return IntroductionScreen(
      key: introKey,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      onDone: () => onIntroEnd(context),
      pages: pageList,
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      back: MaterialIcon.arrowBack,
      skip: const AppText(
        title: 'Skip',
        fontWeight: FontWeight.w600,
      ),
      next: MaterialIcon.arrowForward,
      done: const AppText(
        title: 'Done',
        fontWeight: FontWeight.w600,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: dotDecorator,
      dotsContainerDecorator: shapeDecoration,
    );
  }
}
