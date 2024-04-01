import 'package:flutter/material.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/theme/colors.dart';

class RowTextWidget extends StatelessWidget {
  final String title, subTitle;

  const RowTextWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.textTheme.bodySmall?.copyWith(
            color: grey500,
          ),
        ),
        Text(
          subTitle,
          style: context.textTheme.bodySmall?.copyWith(
            color: grey900,
          ),
        ),
      ],
    );
  }
}