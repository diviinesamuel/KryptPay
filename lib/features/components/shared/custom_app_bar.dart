import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/shared/circular_icon_button.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/theme/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final Widget? leading;
  final double elevation;
  final VoidCallback? onTap;
  final PreferredSizeWidget? bottom;
  final Color backgroundColor;
  final bool centerTitle;

  const CustomAppBar({
    super.key,
    this.title = "",
    this.actions = const [],
    this.leading,
    this.elevation = 0.0,
    this.onTap,
    this.bottom,
    this.backgroundColor = Colors.white,
    this.centerTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation,
      centerTitle: centerTitle,
      leading: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: leading ??
              CircularIconButton(
                onTap: () {
                  if (context.router.canNavigateBack) {
                    context.router.maybePopTop();
                  }
                },
                icon: const Padding(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Icon(Icons.arrow_back_ios, color: grey1000, size: 18),
                ),
              ),
        ),
      ),
      title: title.isNotEmpty
          ? Text(
              title,
              style: context.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w500,
                color: grey900,
              ),
            )
          : null,
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
