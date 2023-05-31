import 'package:ardilla/constant/app_colors.dart';
import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/commons/ardilla_button.dart';
import 'package:ardilla/ui/commons/text.dart';
import 'package:ardilla/ui/commons/text_field_box.dart';
import 'package:ardilla/ui/screens/registration/complete_profile.dart';
import 'package:ardilla/ui/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  TextEditingController emailController = TextEditingController();

  bool hasTyped = false;

  @override
  void initState() {
    super.initState();
    emailController.addListener(
      () {
        if (emailController.text.length > 1) {
          setState(() {
            hasTyped = true;
          });
        }
      },
    );
  }

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
                        text: "Get Started",
                        fontSize: 36.h,
                        textColor: ArdillaColor.purpleColor,
                      ),
                      SizedBox(height: 15.h),
                      const AccentText(
                        text:
                            "To Create an account enter a valid email address",
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
                        hintText: "Email address",
                      ),

                      // Continue
                      SizedBox(height: 200.h),

                      // Button
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ArdillaButton(
                            onClick: () => navigate(
                              context,
                              const CompleteProfileScreen(),
                            ),
                            text: "Continue",
                            buttonColor: hasTyped == true
                                ? ArdillaColor.primaryColor
                                : ArdillaColor.gray200,
                          ),
                          SizedBox(height: 50.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const AccentText(
                                text: "Already have an account?  ",
                              ),
                              InkWell(
                                onTap: () {},
                                child: const AccentText(
                                  text: "Sign In ",
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
