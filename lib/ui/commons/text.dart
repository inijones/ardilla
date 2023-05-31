import 'package:ardilla/constant/app_colors.dart';
import 'package:ardilla/constant/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Widget for all the Text Types on the Screens
final customTheme = ArdillaTheme.light();

class TitleText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;

  const TitleText({
    Key? key,
    required this.text,
    this.fontSize,
    this.textColor,
    this.textAlign,
    this.maxLines,
    this.fontWeight,
    this.textDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontFamily: 'CabinetGrotesk',
        fontSize: fontSize ?? 22.h,
        fontWeight: fontWeight ?? FontWeight.w600,
        color: textColor ?? ArdillaColor.gray500,
      ),
    );
  }
}

class SubtitleText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;

  const SubtitleText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.textColor,
      this.textAlign,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontFamily: 'CabinetGrotesk',
        fontSize: fontSize ?? 18.h,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: textColor ?? ArdillaColor.gray500,
      ),
    );
  }
}

class NormalText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextDecoration? decoration;

  const NormalText({
    Key? key,
    required this.text,
    this.fontSize,
    this.textColor,
    this.textAlign,
    this.fontWeight,
    this.maxLines,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontFamily: 'CabinetGrotesk',
        decoration: decoration,
        fontSize: fontSize ?? 16.h,
        color: textColor ?? ArdillaColor.gray500,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),
    );
  }
}

class BodyText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextDecoration? decoration;

  const BodyText({
    Key? key,
    required this.text,
    this.fontSize,
    this.textColor,
    this.textAlign,
    this.fontWeight,
    this.maxLines,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontFamily: 'CabinetGrotesk',
        decoration: decoration,
        fontSize: fontSize ?? 14.h,
        color: textColor ?? ArdillaColor.gray500,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),
    );
  }
}

class AccentText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? maxLines;

  const AccentText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.textColor,
      this.textAlign,
      this.maxLines,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontFamily: 'CabinetGrotesk',
        fontSize: fontSize ?? 13.h,
        color: textColor ?? ArdillaColor.gray500,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
  }
}

class SmallText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? maxLines;

  const SmallText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.textColor,
      this.textAlign,
      this.maxLines,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontFamily: 'CabinetGrotesk',
        fontSize: fontSize ?? 10.0.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: textColor ?? ArdillaColor.gray500,
      ),
    );
  }
}
