import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/custom/widgets/app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../custom/widgets/app_text.dart';
import '../../custom/widgets/app_text_field.dart';
import '../widgets/auth_footer_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final fullname = TextEditingController();
    final email = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
      appBar: customAppBar(context, '', isCart: true, isNotification: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            "assets/svg/register.svg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.5,
          ),
          const SizedBox(
            height: 24,
          ),
          const AppText(
            title: "Create an Account",
            fontSize: 24,
            letterSpacing: 0.8,
          ),
          const SizedBox(
            height: 24,
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                AppTextField(
                  controller: fullname,
                  hintText: "Fullname",
                  prefixIcon: Icons.person_outline,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Fullname is required';
                    }
                    return null;
                  },
                ),
                AppTextField(
                  controller: email,
                  hintText: "Email",
                  prefixIcon: Icons.mail_outlined,
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
                      return 'Password is required';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                  },
                  child: const Text("Register"),
                ),
              ],
            ),
          ),
          AuthFooterTextWidget(
            title: "Already have an account?",
            subtitle: "Go Back",
            onTap: () => context.pushNamed("loginScreen"),
          ),
        ],
      ),
    );
  }
}
