import 'package:ardilla/constant/app_colors.dart';
import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/commons/ardilla_button.dart';
import 'package:ardilla/ui/commons/backbutton.dart';
import 'package:ardilla/ui/commons/text.dart';
import 'package:ardilla/ui/commons/text_field_box.dart';
import 'package:ardilla/ui/screens/login/login.dart';
import 'package:ardilla/ui/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 67.h),

              // Back Button
              const Align(
                alignment: Alignment.centerLeft,
                child: CustomBackButton(
                  bottonColor: Color(0xff3D0072),
                ),
              ),

              SizedBox(height: 30.h),

              // Complete your profile
              SizedBox(
                width: 268.w,
                child: TitleText(
                  text: "Complete your profile",
                  maxLines: 2,
                  fontSize: 36.sp,
                  textColor: ArdillaColor.purpleColor,
                ),
              ),

              SizedBox(height: 40.h),

              Wrap(
                runSpacing: 20.h,
                children: [
                  TextFieldBox(
                    prefixIcon: SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: Center(
                        child: Image.asset(
                          ArdillaAssets.bicodeSlash,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                    hintText: "Username",
                  ),
                  TextFieldBox(
                    prefixIcon: SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: Center(
                        child: Image.asset(
                          ArdillaAssets.userIcon,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                    hintText: "First Name",
                  ),
                  TextFieldBox(
                    prefixIcon: SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: Center(
                        child: Image.asset(
                          ArdillaAssets.userIcon,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                    hintText: "Last Name",
                  ),
                  TextFieldBox(
                    prefixIcon: SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: Center(
                        child: Image.asset(
                          ArdillaAssets.smartphone,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                    hintText: "Phone Number",
                  ),
                  TextFieldBox(
                    prefixIcon: SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: Center(
                        child: Image.asset(
                          ArdillaAssets.usersIcon,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                    hintText: "Invite code (optional)",
                  ),
                  TextFieldBox(
                    prefixIcon: SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: Center(
                        child: Image.asset(
                          ArdillaAssets.passwordIcon,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                    hintText: "Password",
                  ),
                ],
              ),

              SizedBox(height: 60.h),

              const Row(
                children: [
                  AccentText(text: "By Signing Up , You’re agreeing to our "),
                  AccentText(
                    text: "Terms and ",
                    textColor: ArdillaColor.primaryColor,
                  ),
                ],
              ),
              const Row(
                children: [
                  AccentText(
                    text: "Conditions ",
                    textColor: ArdillaColor.primaryColor,
                  ),
                  AccentText(text: "and "),
                  AccentText(
                    text: "Policy",
                    textColor: ArdillaColor.primaryColor,
                  ),
                ],
              ),

              SizedBox(height: 40.h),

              Center(
                child: ArdillaButton(
                  onClick: () => navigate(
                    context,
                    const LoginScreen(),
                  ),
                  text: "Create Account",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
