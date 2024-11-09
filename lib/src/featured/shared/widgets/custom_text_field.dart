import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final double? width, height;
  final int? maxLength;
  final String? floatingText, hintText;
  final TextStyle hintStyle, errorStyle, inputStyle;
  final TextStyle? floatingStyle;
  final EdgeInsets? contentPadding;
  final void Function(String? value)? onSaved, onChanged;
  final Widget? prefix, suffix;
  final bool showCursor;
  final bool? enabled;
  final bool multiline;
  final bool expands;
  final bool readOnly;
  final bool autofocus;
  final bool showErrorBorder;
  final bool showFocusedBorder;
  final BorderSide border;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final Alignment errorAlign, floatingAlign;
  final Color? fillColor;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String? value)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    super.key,
    this.controller,
    this.width,
    this.maxLength,
    this.floatingText,
    this.floatingStyle,
    this.onSaved,
    this.onChanged,
    this.prefix,
    this.suffix,
    this.enabled,
    this.keyboardType,
    this.textInputAction,
    this.hintText,
    this.validator,
    this.height = 70,
    this.readOnly = false,
    this.showFocusedBorder = true,
    this.multiline = false,
    this.expands = false,
    this.showCursor = true,
    this.showErrorBorder = false,
    this.autofocus = false,
    this.textAlign = TextAlign.start,
    this.border = BorderSide.none,
    this.textAlignVertical = TextAlignVertical.center,
    this.errorAlign = Alignment.centerRight,
    this.floatingAlign = Alignment.centerLeft,
    this.fillColor,
    this.hintStyle = const TextStyle(
      fontSize: 14,
      // color: AppColors.textGreyColor,
      fontWeight: FontWeight.w400
    ),
    this.errorStyle = const TextStyle(
      color: Colors.red,
    ),
    this.inputStyle = const TextStyle(
      fontSize: 14,
      // color: AppColors.textGreyColor,
      fontWeight: FontWeight.w400
    ),
    this.contentPadding = const EdgeInsets.all(0),
    this.inputFormatters,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? errorText;
  bool hidePassword = true;

  bool get hasError => errorText != null;

  bool get showErrorBorder => widget.showErrorBorder && hasError;

  bool get hasFloatingText => widget.floatingText != null;

  bool get isPasswordField =>
      widget.keyboardType == TextInputType.visiblePassword;

  void _onSaved(String? value) {
    final trimmedValue = value!.trim();
    widget.controller?.text = trimmedValue;
    widget.onSaved?.call(trimmedValue);
  }

  void _onChanged(String value) {
    if (widget.onChanged != null) {
      _runValidator(value);
      widget.onChanged!(value);
    }
  }

  String? _runValidator(String? value) {
    final error = widget.validator?.call(value!.trim());
    setState(() {
      errorText = error;
    });
    return error;
  }

  void _togglePasswordVisibility() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  OutlineInputBorder _focusedBorder() {
    return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
        width: 1,
      ),
    );
  }

  OutlineInputBorder _normalBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: widget.border,
    );
  }

  OutlineInputBorder _errorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: widget.border,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Floating text
        if (hasFloatingText) ...[
          SizedBox(
            width: widget.width,
            child: Align(
              alignment: widget.floatingAlign,
              child: Text(
                widget.floatingText!,
                // style: widget.floatingStyle ?? AppTypography.primary.body16,
              ),
            ),
          ),
          const SizedBox(height: 4),
        ],

        // TextField
        TextFormField(
          controller: widget.controller,
          textAlign: widget.textAlign,
          textAlignVertical: widget.textAlignVertical,
          autofocus: widget.autofocus,
          maxLength: widget.maxLength,
          enabled: widget.enabled,
          expands: widget.expands,
          readOnly: widget.readOnly,
          maxLines: widget.multiline ? 12 : 1,
          minLines: widget.multiline ? 6 : 1,
          keyboardType: widget.keyboardType ?? (widget.multiline ? TextInputType.multiline : null),
          textInputAction: widget.textInputAction ?? (widget.multiline ? TextInputAction.newline : null),
          style: context.isPhone ? widget.inputStyle : const TextStyle(
            fontSize: 16,
            // color: AppColors.textGreyColor,
            fontWeight: FontWeight.w400
          ),
          showCursor: widget.showCursor,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          autovalidateMode: AutovalidateMode.disabled,
          // cursorColor: AppColors.textGreyColor,
          obscureText: isPasswordField && hidePassword,
          validator: _runValidator,
          onFieldSubmitted: _runValidator,
          onSaved: _onSaved,
          onChanged: _onChanged,
          inputFormatters: widget.inputFormatters,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: context.isPhone ? widget.hintStyle : const TextStyle(
              fontSize: 16,
              // color: AppColors.textGreyColor,
              fontWeight: FontWeight.w400
            ),
            errorStyle: widget.errorStyle,
            prefixIcon: widget.prefix,
            contentPadding: context.isPhone ? widget.contentPadding : const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            isDense: true,
            filled: true,
            counterText: '',
            border: _normalBorder(),
            enabledBorder: _normalBorder(),
            focusedBorder: widget.showFocusedBorder ? _focusedBorder() : null,
            focusedErrorBorder: widget.showFocusedBorder ? _focusedBorder() : null,
            errorBorder: showErrorBorder ? _errorBorder() : null,
            // suffixIcon: widget.suffix ??
            //   (isPasswordField
            //       ? InkWell(
            //           onTap: _togglePasswordVisibility,
            //           child: Icon(
            //             !hidePassword ? Iconsax.eye : Iconsax.eye_slash,
            //             color: AppColors.textGreyColor,
            //             // size: IconSizes.med22,
            //           ),
            //         )
            //       : null),
          ),
        ),
      ],
    );
  }
}

