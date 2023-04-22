import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../onboarding/screen/onboarding_screen.dart';
import '../provider/splash_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SplashProvider()..setLoading(),
      child: Scaffold(
        body: Consumer<SplashProvider>(builder: (context, value, child) {
          return value.isLoading
              ? Center(
                  child: Image.asset('assets/png/splash.png'),
                )
              : const OnboardingScreen();
        }),
      ),
    );
  }
}
