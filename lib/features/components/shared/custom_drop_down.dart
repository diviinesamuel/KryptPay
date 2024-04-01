import 'package:flutter/material.dart';
import 'package:krypt/util/app_icons.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/theme/colors.dart';

class CustomDropdown<T> extends StatelessWidget {
  final List<T> items;
  final Function(T)? onItemSelected;
  final T? initialItem;
  final double height;
  final String hint;
  final Widget? startIcon;
  final String? label;
  final String? errorMessage;
  final List<DropdownMenuItem<T>>? dropDownItems;
  final Color borderColor;
  final TextStyle? textStyle;
  final bool removeBackground;

  const CustomDropdown({
    Key? key,
    this.items = const [],
    this.onItemSelected,
    this.initialItem,
    this.height = 48.0,
    required this.hint,
    this.label,
    this.startIcon,
    this.errorMessage,
    this.dropDownItems,
    this.borderColor = grey300,
    this.textStyle,
    this.removeBackground = false,
  }) : super(key: key);

  Widget _buildChild(BuildContext context) {
    return Row(
      children: [
        if (startIcon != null)
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 2),
            child: startIcon,
          ),
        Expanded(
          child: DropdownButton<T>(
            dropdownColor: Colors.white,
            underline: const SizedBox(),
            isDense: false,
            style: context.textTheme.bodyMedium,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            isExpanded: true,
            hint: Text(hint),
            value: initialItem,
            icon: Padding(
              padding: const EdgeInsets.only(right: 8, top: 5, bottom: 4),
              child: AppIcons.icChevronDown,
            ),
            items: dropDownItems ??
                items.map((T? value) {
                  return DropdownMenuItem<T>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(value.toString(), style: textStyle),
                    ),
                  );
                }).toList(),
            onChanged: (T? val) {
              if (val != null) {
                if (onItemSelected != null) onItemSelected!(val);
              }
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
            ),
          ),
        const SizedBox(height: 8),
        if (removeBackground)
          _buildChild(context)
        else
          Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1.1, color: borderColor),
              color: grey50,
            ),
            child: _buildChild(context),
          ),
        if (errorMessage != null)
          Text(
            errorMessage!,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.red,
              fontSize: 13.0,
            ),
          ),
      ],
    );
  }
}
