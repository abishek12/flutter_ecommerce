import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'intro_preferences.dart';

onIntroEnd(BuildContext context) {
  setIntroPreferences();
  context.goNamed('mainScreen');
}
