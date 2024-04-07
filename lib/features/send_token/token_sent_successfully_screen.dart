import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/shared/custom_app_bar.dart';

@RoutePage(name: "TokenSentSuccessfullyScreenRoute")
class TokenSentSuccessfullyScreen extends StatelessWidget {
  const TokenSentSuccessfullyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Container(),
          Text("Token Sent")
        ],
      ),
    );
  }
}
