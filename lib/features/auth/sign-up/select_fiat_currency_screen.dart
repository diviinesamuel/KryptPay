import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krypt/di/injection.dart';
import 'package:krypt/features/auth/sign-up/cubit/sign_up_screen_cubit.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/features/components/shared/custom_app_bar.dart';
import 'package:krypt/features/components/shared/custom_drop_down.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/routing/app_router.dart';

@RoutePage(name: "SelectFiatCurrencyScreenRoute")
class SelectFiatCurrencyScreen extends StatefulWidget {
  const SelectFiatCurrencyScreen({super.key});

  @override
  State<SelectFiatCurrencyScreen> createState() => _SelectFiatCurrencyScreenState();
}

class _SelectFiatCurrencyScreenState extends State<SelectFiatCurrencyScreen> {
  final List<String> availableFiats = [
    "Naira",
  ];

  String? _selectedItem;

  final SignUpScreenCubit _signUpScreenCubit = getIt.get();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpScreenCubit, SignUpScreenState>(
      bloc: _signUpScreenCubit,
      listener: (context, state) {
        state.maybeWhen(
          error: context.showSnackBar,
          accountInfoUpdated: () => context.router.replaceAll([const DashboardScreenRoute()]),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const CustomAppBar(
            leading: SizedBox(),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: state.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                orElse: () {
                  return Column(
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
                      const SizedBox(height: 20.0),
                      CustomDropdown<String>(
                        hint: "Select fiat currency",
                        items: availableFiats,
                        initialItem: _selectedItem,
                        onItemSelected: (String selectedItem) {
                          setState(() {
                            _selectedItem = selectedItem;
                          });
                        },
                      ),
                      const Spacer(),
                      AppButton(
                        title: "Continue",
                        onPress: () {
                          if (_selectedItem != null) {
                            _signUpScreenCubit.updateUserSelectedFiatCurrency(fiatCurrency: _selectedItem!);
                          }
                        },
                      )
                    ],
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
