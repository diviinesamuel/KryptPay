import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/dialogs/app_bottom_sheet.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/features/components/shared/custom_text_field.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:krypt/util/theme/colors.dart';

@RoutePage(name: 'SetUpPassCodeAuthorizationScreenRoute')
class SetUpPassCodeAuthorizationScreen extends StatelessWidget {
  SetUpPassCodeAuthorizationScreen({super.key});

  final _passcodeTextController = TextEditingController();

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
                'Enter Passcode',
                style: context.textTheme.titleLarge,
              ),
              const SizedBox(height: 14.0),
              Text(
                "Set a 6-digit code that will be used for\nyour login and approval of transactions",
                style: context.textTheme.bodyMedium,
              ),
              const SizedBox(height: 30),
              CustomTextField(
                controller: _passcodeTextController,
                hintText: "Enter passcode",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 14),
              CustomTextField(
                controller: _passcodeTextController,
                hintText: "Re-enter passcode",
                keyboardType: TextInputType.number,
              ),
              const Spacer(),
              AppButton(
                title: "Save",
                onPress: () {
                  showAppSuccessBottomSheet(
                    context,
                    child: Column(
                      children: [
                        Text(
                          "Passcode set",
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: grey900,
                          ),
                        ),
                        const SizedBox(height: 14.0),
                        Text(
                          "Your 6-digit passcode have been set\nsuccessfully. Protect it!",
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 20.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: AppButton(
                            title: "Continue",
                            onPress: () {
                              context.router.replace(const SelectFiatCurrencyScreenRoute());
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
