import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/features/components/shared/custom_app_bar.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/theme/colors.dart';

@RoutePage(name: "ReceiveTokenScreenRoute")
class ReceiveTokenScreen extends StatelessWidget {
  const ReceiveTokenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Receive",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30, right: 20, left: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Container(
                  width: 224,
                  height: 224,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8.0), border: Border.all(color: grey300)),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("BpTA67...3sajiwe",
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontSize: 20,
                      color: grey900,
                    ),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.copy_outlined),
                    iconSize: 20,)
                  ],
                ),
                const SizedBox(height: 14.0),
                Text("Use this address to receive asset to\nyour wallet.",
                textAlign: TextAlign.center,
                style: context.textTheme.bodySmall?.copyWith(
                  color: grey600,
                  fontSize: 15
                ),),
                const Spacer(),
                AppButton(
                  title: "Share",
                  onPress: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
