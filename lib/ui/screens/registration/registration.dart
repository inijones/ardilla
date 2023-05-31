import 'package:ardilla/constant/app_colors.dart';
import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/commons/ardilla_button.dart';
import 'package:ardilla/ui/commons/backbutton.dart';
import 'package:ardilla/ui/commons/text.dart';
import 'package:ardilla/ui/screens/registration/get_started.dart';
import 'package:ardilla/ui/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Column(
          children: [
            SizedBox(height: 67.h),

            // Back Button
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomBackButton(
                bottonColor: Color(0xff3D0072),
              ),
            ),

            SizedBox(height: 80.h),

            Image.asset(
              ArdillaAssets.registerImage,
              height: 260.h,
              width: 356.w,
            ),

            SizedBox(height: 70.h),

            SizedBox(
              width: 270.w,
              child: TitleText(
                text: "Verify your email address",
                fontSize: 30.sp,
                maxLines: 2,
                fontWeight: FontWeight.w700,
                textColor: ArdillaColor.purpleColor,
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 80.h),

            ArdillaButton(
              onClick: () {},
              buttonColor: Colors.transparent,
              text: "Open Email App",
              textColor: ArdillaColor.primaryColor,
              borderColor: ArdillaColor.primaryColor,
              isOutline: true,
            ),
            SizedBox(height: 26.h),
            ArdillaButton(
              onClick: () => navigate(context, const GetStartedScreen()),
              text: "Continue",
            ),
          ],
        ),
      ),
    );
  }
}
