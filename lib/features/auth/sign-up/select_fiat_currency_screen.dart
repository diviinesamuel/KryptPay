import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/routing/app_router.dart';

@RoutePage(name: "SelectFiatCurrencyScreenRoute")
class SelectFiatCurrencyScreen extends StatelessWidget {
  const SelectFiatCurrencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Fiat Currency",
                style: context.textTheme.titleLarge,
              ),
              const SizedBox(height: 8.0),
              Text(
                "Select the currency used in your location",
                style: context.textTheme.bodyMedium,
              ),
              const Spacer(),
              AppButton(
                title: "Continue",
                onPress: () {
                  context.router.replace(const DashboardScreenRoute());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
