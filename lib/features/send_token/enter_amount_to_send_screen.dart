import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/features/components/shared/custom_app_bar.dart';
import 'package:krypt/features/components/shared/custom_drop_down.dart';
import 'package:krypt/features/components/shared/custom_text_field.dart';
import 'package:krypt/features/send_token/send_token_summary_screen.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:krypt/util/theme/colors.dart';

@RoutePage(name: "EnterAmountToSendScreenRoute")
class EnterAmountToSendScreen extends StatefulWidget {
  const EnterAmountToSendScreen({super.key});

  @override
  State<EnterAmountToSendScreen> createState() => _EnterAmountToSendScreenState();
}

class _EnterAmountToSendScreenState extends State<EnterAmountToSendScreen> {
  final _recipientAddressTextController = TextEditingController();
  final _amountToSendTextController = TextEditingController();

  final List<String> _availableCoins = ["SOL", "DOP", "SQL"];
  String _selectedItem = "SOL";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Enter amount",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              CustomTextField(
                controller: _recipientAddressTextController,
                label: "Send to",
              ),
              const SizedBox(height: 30.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), border: Border.all(color: grey300)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            child: CustomDropdown<String>(
                              removeBackground: true,
                              hint: "",
                              initialItem: _selectedItem,
                              items: _availableCoins,
                              textStyle: context.textTheme.titleLarge?.copyWith(
                                color: grey900,
                                fontSize: 20
                              ),
                              onItemSelected: (String selectedItem) {
                                setState(() {
                                  _selectedItem = selectedItem;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              controller: _amountToSendTextController,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: InputBorder.none
                              ),

                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bal: 48.56SOL"),
                            Text("~ N0"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              AppButton(
                title: "Next",
                onPress: () {
                  context.router.push(const SendTokenSummaryScreenRoute());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
