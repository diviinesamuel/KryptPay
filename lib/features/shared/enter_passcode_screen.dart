import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/features/components/shared/custom_app_bar.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/theme/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

@RoutePage(name: "EnterPasscodeScreenRoute")
class EnterPasscodeScreen extends StatelessWidget {
  final VoidCallback onPasscodeValidated;
  final _pinTextController = TextEditingController();

  EnterPasscodeScreen({
    super.key,
    required this.onPasscodeValidated,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter Passcode",
                style: context.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: grey900,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                "Enter the your passcode to confirm this\ntransaction.",
                style: context.textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 60,
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    borderWidth: 1,
                    fieldHeight: 50,
                    fieldWidth: 50,
                    errorBorderColor: Colors.red,
                    activeColor: grey300,
                    selectedColor: grey700,
                    inactiveColor: grey300,
                    inactiveBorderWidth: 1,
                    selectedFillColor: grey300,
                  ),
                  controller: _pinTextController,
                  enableActiveFill: false,
                  textStyle: context.textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  textInputAction: TextInputAction.go,
                  keyboardType: TextInputType.number,
                  onCompleted: (pin) {
                    debugPrint('submit pin:$pin');
                  },
                  onChanged: (pin) {
                    debugPrint('onChanged execute. pin:$pin');
                  },
                ),
              ),
              const Spacer(),
              AppButton(
                title: "Confirm",
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
