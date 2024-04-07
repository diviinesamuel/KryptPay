import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/features/components/shared/custom_app_bar.dart';
import 'package:krypt/features/components/shared/row_text_widget.dart';
import 'package:krypt/util/app_icons.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:krypt/util/theme/colors.dart';

@RoutePage(name: "SendTokenSummaryScreenRoute")
class SendTokenSummaryScreen extends StatelessWidget {
  const SendTokenSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Summary",
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD8A200).withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: AppIcons.icOutgoing),
                ),
                const SizedBox(height: 20),
                Text(
                  "0.3456SOL",
                  style: context.textTheme.displayMedium?.copyWith(),
                ),
                const SizedBox(height: 4),
                Text(
                  "~N482.456",
                  style: context.textTheme.bodySmall?.copyWith(
                    color: grey600,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: grey300),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RowTextWidget(title: "To", subTitle: "HdEN...NAsF"),
                        RowTextWidget(title: "To", subTitle: "HdEN...NAsF"),
                        RowTextWidget(title: "To", subTitle: "HdEN...NAsF"),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                AppButton(
                  title: "Next",
                  onPress: () {
                    context.router.push(EnterPasscodeScreenRoute(onPasscodeValidated: () {}));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
