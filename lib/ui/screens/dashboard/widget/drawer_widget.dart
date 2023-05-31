import 'package:ardilla/constant/app_colors.dart';
import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/commons/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ArdillaColor.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 66.h),

          // Profile Image
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ArdillaAssets.userProfile,
                height: 54.h,
                width: 54.w,
              ),
              SizedBox(height: 15.h),
              SubtitleText(
                text: "Anita Ojieh",
                fontSize: 18.h,
                textColor: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ],
          ),

          SizedBox(height: 80.h),

          // List of Items
          Wrap(
            runSpacing: 45.h,
            children: const [
              MenuItem(
                asset: ArdillaAssets.profile,
                name: "Profile",
              ),
              MenuItem(
                asset: ArdillaAssets.portfolio,
                name: "Portfolio",
              ),
              MenuItem(
                asset: ArdillaAssets.payment,
                name: "Payment",
              ),
              MenuItem(
                asset: ArdillaAssets.invesment,
                name: "Investment",
                comingSoon: true,
              ),
              MenuItem(
                asset: ArdillaAssets.insurance,
                name: "Insurance",
                comingSoon: true,
              ),
              MenuItem(
                asset: ArdillaAssets.budgeting,
                name: "Budgeting",
              ),
            ],
          ),

          SizedBox(height: 280.h),

          InkWell(
            onTap: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0.r),
                  ),
                ),
                content: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  height: 154.h,
                  width: 327.w,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const BodyText(
                          text: "Are you sure you want to LOG OUT?",
                          textColor: ArdillaColor.purpleColor,
                        ),
                        SizedBox(height: 20.h),

                        // Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 44.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: const Color(0xffFCE4EB),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: const Center(
                                child: BodyText(
                                  text: "Confirm",
                                  textColor: Color(0xffE8356D),
                                ),
                              ),
                            ),
                            SizedBox(width: 25.w),
                            const BodyText(
                              text: "No, Cancel",
                              textColor: Colors.black,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  ArdillaAssets.logOut,
                  height: 30.h,
                  width: 30.w,
                ),
                SizedBox(width: 24.w),
                const SubtitleText(
                  text: "Log Out",
                  textColor: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.asset,
    required this.name,
    this.comingSoon = false,
  });

  final String asset;
  final String name;
  final bool? comingSoon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          asset,
          height: 20.h,
          width: 20.w,
        ),
        SizedBox(width: 20.w),
        SizedBox(
          width: 68.w,
          child: AccentText(
            text: name,
            textColor: Colors.white,
          ),
        ),
        SizedBox(width: 12.w),
        if (comingSoon == true)
          Container(
            height: 22.h,
            width: 60.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70.h),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Center(
              child: SmallText(
                text: "Coming Soon",
                textColor: Colors.white,
                fontSize: 6.sp,
              ),
            ),
          ),
      ],
    );
  }
}
