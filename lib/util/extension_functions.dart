import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension BuildContextWrapper on BuildContext {
  double get height {
    return MediaQuery.of(this).size.height;
  }

  double get width {
    return MediaQuery.of(this).size.width;
  }

  TextTheme get textTheme => Theme.of(this).textTheme;

  void showSnackBar(String errorMessage) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          errorMessage,
          style: textTheme.bodySmall?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

extension CopyWithExtension on SvgPicture {
  SvgPicture copyWith({Color? color, required String assetName}) {
    return SvgPicture.asset(assetName, color: color);
  }
}

extension Greeting on DateTime {
  String get greeting {
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }
}

extension StringExtension on String {
  String get capitalizeFirstLetter {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}
