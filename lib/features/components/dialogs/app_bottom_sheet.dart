import 'package:flutter/material.dart';
import 'package:krypt/util/app_icons.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/theme/colors.dart';

void showAppBottomSheet({
  required BuildContext context,
  required Widget child,
  bool isDismissible = true,
  double heightPercent = 0.54,
}) {
  showModalBottomSheet(
    isDismissible: isDismissible,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24.0),
    ),
    backgroundColor: Colors.white,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        width: double.infinity,
        height: context.height * heightPercent,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            color: Colors.white),
        child: child,
      );
    },
  );
}

void showAppSuccessBottomSheet(BuildContext context, {required Widget child}) {
  showAppBottomSheet(
    heightPercent: 0.34,
    context: context,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: green100,
          ),
          child: Center(child: AppIcons.icCheck),
        ),
        const SizedBox(height: 20),
        child,
      ],
    ),
  );
}
