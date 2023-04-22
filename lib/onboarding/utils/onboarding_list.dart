import 'package:introduction_screen/introduction_screen.dart';

import '../widgets/page_decoration.dart';

final pageList = [
  PageViewModel(
    title: "Fractional shares",
    body:
        "Instead of having to buy an entire share, invest any amount you want.",
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "Learn as you go",
    body:
        "Download the Stockpile app and master the market with our mini-lesson.",
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "Kids and teens",
    body:
        "Kids and teens can track their stocks 24/7 and place trades that you approve.",
    decoration: pageDecoration,
  ),
];
