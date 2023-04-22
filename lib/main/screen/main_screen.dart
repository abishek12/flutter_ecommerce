import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../custom/widgets/app_bar.dart';
import '../provider/bottom_nav_provider.dart';
import '../utils/screen_list.dart';
import '../widget/bottom_nav_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(builder: (context, value, _) {
      return Scaffold(
        appBar: customAppBar(
          context,
          screenList[value.currentIndex]['title'],
        ),
        body: screenList[value.currentIndex]['screen'],
        bottomNavigationBar: const BottomNavWidget(),
      );
    });
  }
}
