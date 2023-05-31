
import 'package:ardilla/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 5.w,
        children: [
          Container(
            height: 2,
            width: 70.w,
            color: ArdillaColor.primaryColor,
          ),
          Container(
            height: 2,
            width: 70.w,
            color: const Color(0xffD9D9D9),
          ),
          Container(
            height: 2,
            width: 70.w,
            color: const Color(0xffD9D9D9),
          ),
        ],
      ),
    );
  }
}
