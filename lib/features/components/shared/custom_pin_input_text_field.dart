import 'package:flutter/material.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/logging/app_logger.dart';
import 'package:krypt/util/theme/colors.dart';

class CustomPinInputTextField extends StatelessWidget {
  final Function(String pin) onComplete;

  const CustomPinInputTextField({super.key, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < 6; i++)
          Container(
            width: 50,
            height: 52,
            decoration: BoxDecoration(
              border: Border.all(color: grey300),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              style: context.textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
              showCursor: false,
              maxLength: 1,
              onChanged: (String? input) {
                AppLogger.debug("typed input is $input");
                if (input != null && input.isNotEmpty) {
                  if (input.length == 1 && i < 5) {
                    FocusScope.of(context).nextFocus();
                  } else {
                    onComplete("123456");
                  }
                } else {
                  FocusScope.of(context).previousFocus();
                }
              },
              textInputAction: TextInputAction.go,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(top: 4, left: 16),
                border: InputBorder.none,
                counterText: '',
              ),
            ),
          ),
      ],
    );
  }
}
