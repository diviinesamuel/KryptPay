import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:krypt/util/extension_functions.dart';
import 'package:krypt/util/logging/app_logger.dart';
import 'package:krypt/util/theme/colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final String? labelText;
  final String? errorText;
  final TextInputAction? textInputAction;
  final int maxLines;
  final bool isReadOnly;
  final VoidCallback? onTap;
  final int? textLimit;

  const CustomTextField(
      {super.key,
      required this.controller,
      this.hintText = "",
      this.label,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.onChanged,
      this.obscureText = false,
      this.labelText,
      this.errorText,
      this.textInputAction = TextInputAction.next,
      this.maxLines = 1,
      this.isReadOnly = false,
      this.onTap,
      this.textLimit});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool get isPasswordField =>
      (widget.label != null && widget.label!.toLowerCase().contains('password')) ||
      (widget.hintText.isNotEmpty && widget.hintText.toLowerCase().contains("password"));

  bool get isEmailField => widget.label != null && widget.label!.toLowerCase().contains('email');

  bool get isPhoneNumberField => widget.label != null && widget.label!.toLowerCase().contains('phone');
  bool _obscureText = true;

  final inputFormatters = <TextInputFormatter>[];

  @override
  void initState() {
    if (isPasswordField || isEmailField || isPhoneNumberField) {
      inputFormatters.add(FilteringTextInputFormatter.deny(RegExp(r'\s')));
    }
    if (isPhoneNumberField) {
      AppLogger.debug("isPhoneNumberField");
      inputFormatters.addAll([
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(11),
      ]);
    }

    if (widget.keyboardType == TextInputType.number) {
      inputFormatters.addAll([
        FilteringTextInputFormatter.digitsOnly,
      ]);
    }

    if (widget.textLimit != null) {
      inputFormatters.addAll([
        LengthLimitingTextInputFormatter(widget.textLimit),
      ]);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 15.0,
              color: grey900,
            ),
          ),
        const SizedBox(height: 8),
        TextFormField(
          maxLines: widget.maxLines,
          controller: widget.controller,
          validator: widget.validator,
          onChanged: widget.onChanged,
          readOnly: widget.isReadOnly,
          onTap: widget.onTap,
          keyboardType: widget.keyboardType,
          obscureText: isPasswordField ? _obscureText : widget.obscureText,
          textInputAction: widget.textInputAction,
          //obscuringCharacter: '••••••••••',
          style: context.textTheme.bodySmall?.copyWith(color: grey800, fontSize: 15.0),
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            fillColor: grey50,
            filled: true,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: grey600),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            hintText: widget.hintText,
            hintStyle: context.textTheme.bodyMedium?.copyWith(color: grey500),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: grey300),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: grey300),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            prefixIcon: widget.prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: widget.prefixIcon,
                  )
                : null,
            suffixIcon: isPasswordField
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : widget.suffixIcon,
            contentPadding: EdgeInsets.only(top: widget.maxLines > 1 ? 40.0 : 6.0, left: 10),
          ),
        )
      ],
    );
  }
}
