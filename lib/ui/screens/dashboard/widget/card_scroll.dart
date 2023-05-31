import 'package:ardilla/constant/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardsScroll extends StatelessWidget {
  const CardsScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 30.w,
        children: [
          SizedBox(width: 0.w),
          Image.asset(
            ArdillaAssets.card1,
            width: 370.w,
            height: 210.h,
          ),
          Image.asset(
            ArdillaAssets.card2,
            width: 370.w,
            height: 210.h,
          ),
          Image.asset(
            ArdillaAssets.card3,
            width: 370.w,
            height: 210.h,
          ),
          SizedBox(width: 0.w),
        ],
      ),
    );
  }
}
