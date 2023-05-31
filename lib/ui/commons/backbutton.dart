import 'package:ardilla/ui/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
    this.navigateTwice,
    this.bottonColor,
  }) : super(key: key);

  final Color? bottonColor;

  final bool? navigateTwice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.0.w,
      height: 50.0.h,
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0.r),
        onTap: () {
          Navigator.pop(context);
          if (navigateTwice == true) {
            popView(context);
          }
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.keyboard_arrow_left_sharp,
            size: 30,
            color: bottonColor ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
