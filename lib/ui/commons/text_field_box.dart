import 'package:ardilla/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Reusable TextField used App Wide
class TextFieldBox extends StatelessWidget {
  final String? hintText;
  final double? height;
  final double? width;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final Widget? suffixColor;
  final Widget? prefixIcon;
  final bool? isCollapsed;
  final bool? isEnabled;
  final Function(String)? onChanged;
  final bool? autoFocus;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final bool? filled;
  final Color? fillColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final Function()? onEditingComplete;
  final Color? borderColor;
  final TextInputType? keyboardType;
  final Color? prefixColor;
  final bool? autoCorrect;
  final bool? enableSuggestion;
  final List<TextInputFormatter>? inputFormatters;
  final double? fontSize;

  const TextFieldBox({
    Key? key,
    this.hintText,
    this.height,
    this.width,
    this.controller,
    this.validator,
    this.textInputAction,
    this.obscureText,
    this.suffixColor,
    this.prefixIcon,
    this.isCollapsed,
    this.isEnabled,
    this.onChanged,
    this.autoFocus,
    this.suffixIcon,
    this.hintStyle,
    this.filled,
    this.fillColor,
    this.maxLines,
    this.focusNode,
    this.onEditingComplete,
    this.borderColor,
    this.keyboardType,
    this.prefixColor,
    this.autoCorrect,
    this.enableSuggestion,
    this.inputFormatters,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: TextFormField(
        inputFormatters: inputFormatters,
        autocorrect: autoCorrect ?? true,
        enableSuggestions: enableSuggestion ?? true,
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        focusNode: focusNode,
        maxLines: maxLines ?? 1,
        textInputAction: textInputAction,
        onEditingComplete: onEditingComplete,
        style: TextStyle(
          fontFamily: 'CabinetGrotesk',
          fontWeight: FontWeight.w500,
          fontSize: fontSize ?? 16.h,
          color: ArdillaColor.primaryColor,
          decoration: TextDecoration.none,
        ),
        obscureText: obscureText ?? false,
        cursorColor: ArdillaColor.gray500,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.w),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          prefixIconColor: prefixColor,
          fillColor: fillColor ?? Colors.white,
          filled: filled ?? true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? ArdillaColor.primaryColor,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ArdillaColor.primaryColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
          ),
          hintText: hintText,
          hintStyle: hintStyle ??
              TextStyle(
                fontFamily: 'CabinetGrotesk',
                fontWeight: FontWeight.w400,
                fontSize: 16.h,
                color: ArdillaColor.gray500,
              ),
        ),
      ),
    );
  }
}
