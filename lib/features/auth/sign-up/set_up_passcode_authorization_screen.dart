import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krypt/di/injection.dart';
import 'package:krypt/features/auth/sign-up/cubit/sign_up_screen_cubit.dart';
import 'package:krypt/features/components/dialogs/app_bottom_sheet.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/features/components/shared/custom_text_field.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/logging/app_logger.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:krypt/util/theme/colors.dart';

@RoutePage(name: 'SetUpPassCodeAuthorizationScreenRoute')
class SetUpPassCodeAuthorizationScreen extends StatelessWidget {
  SetUpPassCodeAuthorizationScreen({super.key});

  final _passcodeTextController = TextEditingController();
  final _reEnterPasscodeTextController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final SignUpScreenCubit _signUpScreenCubit = getIt.get();

  String? _passcodeTextFieldValidator(String? input) {
    if (input != null && input.length == 6) return null;
    return "Please provide a valid passcode";
  }

  void _showSuccessBottomSheet(BuildContext context) {
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
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpScreenCubit, SignUpScreenState>(
      bloc: _signUpScreenCubit,
      listener: (context, state) {
        state.maybeWhen(
          error: context.showSnackBar,
          accountInfoUpdated: () => _showSuccessBottomSheet(context),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
              child: state.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                orElse: () {
                  return Form(
                    key: _formKey,
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
                          textLimit: 6,
                          validator: _passcodeTextFieldValidator,
                        ),
                        const SizedBox(height: 14),
                        CustomTextField(
                          controller: _reEnterPasscodeTextController,
                          hintText: "Re-enter passcode",
                          keyboardType: TextInputType.number,
                          textLimit: 6,
                          validator: _passcodeTextFieldValidator,
                        ),
                        const Spacer(),
                        AppButton(
                          title: "Save",
                          onPress: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              final String passcode = _passcodeTextController.text.trim();
                              final String reEnteredPasscode = _reEnterPasscodeTextController.text.trim();

                              final focusScope = FocusScope.of(context);

                              if (focusScope.hasFocus) {
                                focusScope.unfocus();
                              }

                              if (passcode != reEnteredPasscode) {
                                context.showSnackBar("Passcode does not match, please try again.");
                              } else {
                                AppLogger.debug("passcode is $passcode and reEnteredPasscode is $reEnteredPasscode");

                                _signUpScreenCubit.updateUserPasscode(passcode: passcode);
                              }
                            }
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
