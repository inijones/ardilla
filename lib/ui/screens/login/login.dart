import 'package:ardilla/constant/app_colors.dart';
import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/commons/ardilla_button.dart';
import 'package:ardilla/ui/commons/text.dart';
import 'package:ardilla/ui/commons/text_field_box.dart';
import 'package:ardilla/ui/screens/dashboard/home.dart';
import 'package:ardilla/ui/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8807F7),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 926,
          width: 428,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: SizedBox(
                  height: 302.h,
                  width: 438.w,
                  child: Stack(
                    children: [
                      Image.asset(
                        ArdillaAssets.getStartedVector,
                        height: 302.h,
                        width: 438.w,
                      ),
                      Center(
                        child: Image.asset(
                          ArdillaAssets.logo,
                          height: 50.h,
                          width: 150.w,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 17.w,
                right: 17.w,
                child: Container(
                  height: 706.h,
                  width: 395,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 694.h,
                  width: 411,
                  padding: EdgeInsets.symmetric(horizontal: 35.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70.h),
                      TitleText(
                        text: "Welcome !",
                        fontSize: 36.h,
                        textColor: ArdillaColor.purpleColor,
                      ),
                      SizedBox(height: 15.h),
                      const AccentText(
                        text: "Here’s how to Log in to access your account",
                      ),
                      SizedBox(height: 35.h),
                      TextFieldBox(
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: Center(
                            child: Image.asset(
                              ArdillaAssets.mailIcon,
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                        ),
                        hintText: "Email address or Kode Hex",
                      ),

                      // Continue
                      SizedBox(height: 20.h),

                      TextFieldBox(
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: Center(
                            child: Image.asset(
                              ArdillaAssets.mailIcon,
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                        ),
                        hintText: "Password",
                      ),

                      SizedBox(height: 15.h),

                      const Align(
                        alignment: Alignment.centerRight,
                        child: AccentText(
                          text: "Forgot Password?",
                          textColor: ArdillaColor.purpleColor,
                        ),
                      ),

                      SizedBox(height: 35.h),

                      // Button
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ArdillaButton(
                            onClick: () =>
                                navigate(context, const HomeScreen()),
                            text: "Log In",
                          ),
                          SizedBox(height: 70.h),
                          ArdillaButton(
                            onClick: () {},
                            hasImage: true,
                            buttonColor: Colors.transparent,
                            text: "Sign in with SAN ID",
                            textColor: ArdillaColor.primaryColor,
                            borderColor: ArdillaColor.primaryColor,
                            isOutline: true,
                          ),
                          SizedBox(height: 30.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const AccentText(
                                text: "New user? ",
                              ),
                              InkWell(
                                onTap: () {},
                                child: const AccentText(
                                  text: "Create Account",
                                  textColor: ArdillaColor.purpleColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
