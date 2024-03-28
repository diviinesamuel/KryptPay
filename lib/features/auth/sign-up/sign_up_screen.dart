import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/features/components/shared/custom_text_field.dart';
import 'package:krypt/util/app_icons.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:krypt/util/theme/colors.dart';

@RoutePage(name: "SignUpScreenRoute")
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create an account',
                style: context.textTheme.titleLarge,
              ),
              const SizedBox(height: 14),
              Text(
                'Enter a valid email address to create an\naccount.',
                style: context.textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _emailTextController,
                hintText: "Email address",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: _emailTextController,
                hintText: "Password",
                keyboardType: TextInputType.emailAddress,
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
              const Spacer(),
              AppButton(
                title: "Continue",
                onPress: () {
                  context.router.replace(SetUpPassCodeAuthorizationScreenRoute());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
