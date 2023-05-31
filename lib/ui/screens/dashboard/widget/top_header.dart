import 'package:ardilla/constant/app_colors.dart';
import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/commons/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopHeaderWidget extends StatelessWidget {
  const TopHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 205.w,
          height: 55.h,
          child: InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      ArdillaAssets.userProfile,
                      height: 54.h,
                      width: 54.w,
                    ),
                    SizedBox(width: 20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AccentText(text: "Good Morning"),
                        SizedBox(height: 12.h),
                        const SubtitleText(
                          text: "Cadet <Annie/>",
                          fontWeight: FontWeight.w700,
                          textColor: ArdillaColor.purpleColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        Image.asset(
          ArdillaAssets.noificaionIcon,
          height: 24.h,
          width: 24.w,
        ),
      ],
    );
  }
}
