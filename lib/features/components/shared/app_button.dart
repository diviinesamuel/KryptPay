import 'package:flutter/material.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/theme/colors.dart';

abstract class _AppButton extends StatelessWidget {
  final String title;
  final Widget startIcon, endIcon;
  final Color backgroundColor;
  final double width, height, radius, fontSize;
  final VoidCallback? onPress;
  final Color? textColor;

  const _AppButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 44,
    this.startIcon = const SizedBox.shrink(),
    this.endIcon = const SizedBox.shrink(),
    this.backgroundColor = grey900,
    this.radius = 30.0,
    this.onPress,
    this.textColor,
    this.fontSize = 16,
  });

  Widget? buildBody(BuildContext context);

  @override
  Widget build(BuildContext context) {
    final Widget? body = buildBody(context);
    return InkWell(
      borderRadius: BorderRadius.circular(radius),
      onTap: onPress,
      child: body ??
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius), color: backgroundColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (startIcon != const SizedBox.shrink()) startIcon,
                Text(
                  title,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize,
                  ),
                ),
                if (endIcon != const SizedBox.shrink()) endIcon,
              ],
            ),
          ),
    );
  }
}

class AppButton extends _AppButton {
  const AppButton({
    super.key,
    required super.title,
    super.endIcon,
    super.startIcon,
    super.width,
    super.height,
    super.backgroundColor,
    super.radius,
    super.onPress,
    super.textColor,
    super.fontSize,
  });

  @override
  Widget? buildBody(BuildContext context) => null;
}

class AppOutlinedButton extends _AppButton {
  final Color borderColor;
  final double borderWidth, startSpacing, borderRadius;

  const AppOutlinedButton({
    super.key,
    required super.title,
    super.width,
    super.height,
    super.onPress,
    this.borderColor = grey200,
    this.borderWidth = 1.0,
    super.startIcon,
    super.textColor = grey900,
    this.startSpacing = 3.0,
    this.borderRadius = 10.0,
    super.radius,
    super.fontSize,
  });

  @override
  Widget? buildBody(BuildContext context) {
    return Container(
      width: super.width,
      height: super.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          super.startIcon,
          SizedBox(width: startSpacing),
          Text(
            title,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: textColor,
              fontSize: fontSize,
            ),
          ),
          super.endIcon
        ],
      ),
    );
  }
}
