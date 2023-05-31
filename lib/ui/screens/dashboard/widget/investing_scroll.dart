import 'package:ardilla/constant/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvestingScroll extends StatelessWidget {
  const InvestingScroll({
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
            ArdillaAssets.save,
            width: 337.w,
            height: 240.h,
          ),
          Image.asset(
            ArdillaAssets.invest,
            width: 337.w,
            height: 240.h,
          ),
          Image.asset(
            ArdillaAssets.insure,
            width: 337.w,
            height: 240.h,
          ),
          SizedBox(width: 0.w),
        ],
      ),
    );
  }
}
