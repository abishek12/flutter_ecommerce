import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../custom/widgets/app_bar.dart';
import '../../custom/widgets/app_text.dart';
import '../../custom/widgets/app_text_field.dart';
import '../widgets/auth_footer_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
      appBar: customAppBar(context, '', isCart: true, isNotification: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            "assets/svg/login.svg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.5,
          ),
          const SizedBox(
            height: 24,
          ),
          const AppText(
            title: "Welcome Back",
            fontSize: 24,
            letterSpacing: 0.8,
          ),
          const SizedBox(
            height: 24,
          ),
          AppTextField(
            controller: email,
            hintText: "Email",
            prefixIcon: Icons.mail_outline,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Email is required';
              }
              return null;
            },
          ),
          AppTextField(
            controller: password,
            hintText: "Password",
            prefixIcon: Icons.password_outlined,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Email is required';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Login"),
          ),
          AuthFooterTextWidget(
            title: "Don't have an account?",
            subtitle: "Create Now",
            onTap: () => context.pushNamed("registerScreen"),
          ),
        ],
      ),
    );
  }
}
