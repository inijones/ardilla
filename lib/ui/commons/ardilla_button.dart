import 'package:ardilla/constant/app_colors.dart';
import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/commons/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// CardifyButton is the blue colored button used majorly for navigation throughout the app
class ArdillaButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Function onClick;
  final String text;
  final double? radius;
  final Color? buttonColor;
  final Color? textColor;
  final Color? progressColor;
  final double? textSize;
  final FontWeight? fontWeight;
  final bool isOutline;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;

  final bool? hasImage;
  final String? asset;

  const ArdillaButton({
    Key? key,
    required this.onClick,
    required this.text,
    this.height,
    this.width,
    this.radius,
    this.buttonColor,
    this.textColor,
    this.progressColor,
    this.textSize,
    this.fontWeight,
    this.isOutline = false,
    this.borderColor,
    this.padding,
    this.hasImage,
    this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 54.h,
      width: width ?? 358.w,
      decoration: BoxDecoration(
        color: buttonColor ?? ArdillaColor.primaryColor,
        borderRadius: radius != null
            ? BorderRadius.circular(radius!)
            : BorderRadius.circular(90.0.r),
        // boxShadow: [
        //   BoxShadow(
        //     blurRadius: 2,
        //     spreadRadius: 2,
        //     color: AppColors.primarycolor.withOpacity(0.2),
        //   )
        // ],
        border: isOutline
            ? Border.all(
                color: borderColor ?? ArdillaColor.primaryColor,
              )
            : null,
      ),
      child: InkWell(
        onTap: () {
          onClick();
        },
        borderRadius: radius != null
            ? BorderRadius.circular(radius!)
            : BorderRadius.circular(12.0.r),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              hasImage == true
                  ? Row(
                      children: [
                        Image.asset(
                          ArdillaAssets.loginIcon,
                          height: 21.h,
                          width: 21.w,
                        ),
                        const SizedBox(width: 15),
                      ],
                    )
                  : const SizedBox.shrink(),
              SubtitleText(
                text: text,
                textColor: textColor ?? Colors.white,
                fontSize: textSize ?? 16.h,
                fontWeight: fontWeight ?? FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppLoadingButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? color;
  final Color? textColor;
  const AppLoadingButton({
    Key? key,
    this.height,
    this.width,
    this.borderRadius,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width ?? 330.w,
        height: height ?? 56.h,
        child: ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
            //Elevation based on states
            elevation: MaterialStateProperty.resolveWith<double>((states) {
              if (states.contains(MaterialState.pressed)) {
                return 0;
              }
              return 0;
            }),
            //Border
            shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
              (states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 12.0.r),
                );
              },
            ),
            backgroundColor: color != null
                ? MaterialStateProperty.resolveWith<Color>((states) => color!)
                : null,
          ),
          child: const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
