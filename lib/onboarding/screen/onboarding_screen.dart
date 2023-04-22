import 'package:flutter/material.dart';

import '../../main/screen/main_screen.dart';
import '../helper/intro_preferences.dart';
import '../widgets/intro_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIntroPreferences(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          if (snapshot.hasData) {
            return snapshot.data ? const MainScreen() : const IntroWidget();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
