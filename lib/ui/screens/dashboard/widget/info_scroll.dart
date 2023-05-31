import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/commons/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoScroll extends StatelessWidget {
  const InfoScroll({
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NormalText(text: "Rank"),
              SizedBox(height: 15.h),
              Image.asset(
                ArdillaAssets.rank,
                width: 335.w,
                height: 190.h,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NormalText(text: "Badges"),
              SizedBox(height: 15.h),
              Image.asset(
                ArdillaAssets.beginner,
                width: 335.w,
                height: 190.h,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NormalText(text: "Rank"),
              SizedBox(height: 15.h),
              Image.asset(
                ArdillaAssets.referral,
                width: 335.w,
                height: 190.h,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NormalText(text: "Money Wise"),
              SizedBox(height: 15.h),
              Image.asset(
                ArdillaAssets.moneyWise,
                width: 335.w,
                height: 190.h,
              ),
            ],
          ),
          SizedBox(width: 0.w),
        ],
      ),
    );
  }
}
