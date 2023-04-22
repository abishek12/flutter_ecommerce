import 'package:flutter/material.dart';

import '../widgets/home_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          HomeCarousel(),
        ],
      ),
    );
  }
}
