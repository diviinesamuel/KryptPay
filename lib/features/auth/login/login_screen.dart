import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/features/components/shared/custom_text_field.dart';
import 'package:krypt/util/app_icons.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:krypt/util/theme/colors.dart';

@RoutePage(name: 'LoginScreenRoute')
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30, right: 15, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: context.textTheme.displayLarge,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _emailTextController,
                hintText: "Email",
              ),
              const SizedBox(height: 8),
              CustomTextField(
                controller: _passwordTextController,
                hintText: "Password",
              ),
              const SizedBox(height: 20),
              AppButton(
                title: "Login",
                onPress: () {
                  context.router.push(const DashboardScreenRoute());
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: Divider(color: grey200)),
                  const SizedBox(width: 20),
                  Text(
                    "or",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 18.0, color: grey500),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(child: Divider(color: grey200)),
                ],
              ),
              const SizedBox(height: 20),
              AppOutlinedButton(
                startSpacing: 10.0,
                startIcon: AppIcons.icGoogle,
                title: "Sign up with Google",
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
