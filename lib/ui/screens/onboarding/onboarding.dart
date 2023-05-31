import 'package:ardilla/constant/app_colors.dart';
import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/commons/text.dart';
import 'package:ardilla/ui/screens/registration/registration.dart';
import 'package:ardilla/ui/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Column(
          children: [
            SizedBox(height: 85.h),

            // Skip Button
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => navigate(context, const RegistrationScreen()),
                child: const BodyText(
                  text: "Skip",
                  textColor: ArdillaColor.primaryColor,
                ),
              ),
            ),

            SizedBox(height: 15.h),

            Column(
              children: [
                Image.asset(
                  ArdillaAssets.onboardingImage,
                  height: 373.h,
                  width: 382.w,
                ),

                // Title Text
                SizedBox(
                  width: 307.w,
                  child: TitleText(
                    text: "Lorem Ipsum Kip Antares Lorem",
                    textColor: ArdillaColor.purpleColor,
                    fontSize: 36.sp,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: 10.h),

                // Description
                SizedBox(
                  width: 275.w,
                  child: const AccentText(
                    text:
                        "Lorem ipsum dolor sit amet consectetur. Congue eget aliquet nullam velit volutpat in viverra. Amet integer urna ornare congue ultrices at.",
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            SizedBox(height: 80.h),

            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: Row(
                children: [
                  Image.asset(
                    ArdillaAssets.progressImage,
                    height: 7.h,
                    width: 47.w,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => navigate(context, const RegistrationScreen()),
                    child: Image.asset(
                      ArdillaAssets.arrowButon,
                      height: 82.h,
                      width: 82.w,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
