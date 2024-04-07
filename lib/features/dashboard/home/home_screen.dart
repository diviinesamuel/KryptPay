import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/util/app_icons.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:krypt/util/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(DateTime.now().greeting),
            const _BalanceSection(),
            const SizedBox(height: 30.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xFCF1CE33).withOpacity(0.2),
                  border: Border.all(color: appYellow),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Earn Krystals",
                          style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: grey800),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          "Earn Krystals from referrals, transaction\nstreaks and transaction volumes.",
                          style: context.textTheme.bodySmall?.copyWith(
                            fontSize: 11.0,
                            color: grey500,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text("Learn more",
                            style: context.textTheme.bodySmall?.copyWith(
                              decoration: TextDecoration.underline,
                              fontSize: 12.0,
                              color: grey800,
                            )),
                        const SizedBox(height: 6.0),
                      ],
                    ),
                  ),
                  AppIcons.icTwoCoins
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _BalanceSection extends StatefulWidget {
  const _BalanceSection({super.key});

  @override
  State<_BalanceSection> createState() => _BalanceSectionState();
}

class _BalanceSectionState extends State<_BalanceSection> {
  bool _showBalance = true;

  void _toggleShowBalance() {
    _showBalance = !_showBalance;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Balance", style: context.textTheme.bodySmall?.copyWith(color: grey600)),
            const SizedBox(height: 4.0),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: !_showBalance ? 10.0 : 0.0),
                    child: Text(
                      _showBalance ? "\$23,236.56" : "*********",
                      style: context.textTheme.displayMedium,
                    ),
                  ),
                  IconButton(
                    iconSize: 20,
                    onPressed: _toggleShowBalance,
                    icon: Icon(_showBalance ? Icons.visibility : Icons.visibility_off),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              "-N34,924,549.68",
              style: context.textTheme.bodySmall?.copyWith(color: grey600),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                  title: "SEND",
                  width: 115,
                  backgroundColor: grey300,
                  textColor: grey900,
                  fontSize: 12.0,
                  height: 42,
                  onPress: () {
                    context.router.push(EnterRecipientAddressScreenRoute());
                  },
                ),
                const SizedBox(width: 24.0),
                AppButton(
                  title: "RECEIVE",
                  width: 115,
                  backgroundColor: grey300,
                  textColor: grey900,
                  fontSize: 12.0,
                  height: 42,
                  onPress: () {
                    context.router.push(const ReceiveTokenScreenRoute());
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
