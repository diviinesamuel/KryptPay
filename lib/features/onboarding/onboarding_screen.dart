import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/data/services/shared_preference_service.dart';
import 'package:krypt/di/injection.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/routing/app_router.dart';

@RoutePage(name: 'OnBoardingScreenRoute')
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Make payments in\ncryptocurrencies\nwith just one scan",
              style: context.textTheme.displayLarge,
            ),
            const SizedBox(height: 20),
            Text(
              "Simply scan the merchant's QR code,\nconfirm the details, and make\nthe payment.",
              style: context.textTheme.bodySmall,
            ),
            const SizedBox(height: 30),
            AppButton(
              title: "Get Started",
              height: 48.0,
              onPress: () {
                getIt.get<SharedPreferencesService>().setHasFinishedOnBoarding(true);
                context.router.replace(SignUpScreenRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
