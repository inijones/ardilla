import 'package:ardilla/constant/app_colors.dart';
import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/commons/text.dart';
import 'package:ardilla/ui/screens/dashboard/widget/card_scroll.dart';
import 'package:ardilla/ui/screens/dashboard/widget/indicator.dart';
import 'package:ardilla/ui/screens/dashboard/widget/info_scroll.dart';
import 'package:ardilla/ui/screens/dashboard/widget/investing_scroll.dart';
import 'package:ardilla/ui/screens/dashboard/widget/top_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Container(
        color: const Color(0xfff9f9f9),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: const TopHeaderWidget(),
              ),

              // Cards
              SizedBox(height: 30.h),
              const CardsScroll(),

              SizedBox(height: 30.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: Column(
                  children: [
                    const IndicatorWidget(),
                    SizedBox(height: 30.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BodyText(
                          text: "Quick Links",
                          textColor: ArdillaColor.purpleColor,
                        ),
                        SizedBox(height: 22.h),
                        const BoxRowWidget(),
                        SizedBox(height: 40.h),
                        Image.asset(
                          ArdillaAssets.kycPercent,
                          height: 96.h,
                          width: 367.w,
                        ),
                        SizedBox(height: 40.h),

                        // Arrows
                        const ArrowWidgets(),

                        SizedBox(height: 14.h),
                      ],
                    ),
                  ],
                ),
              ),

              const InvestingScroll(),

              SizedBox(height: 85.h),

              Column(
                children: [
                  const InfoScroll(),
                  SizedBox(height: 30.h),
                  Image.asset(
                    ArdillaAssets.infoIndicator,
                    height: 10.h,
                    width: 53.w,
                  ),
                ],
              ),

              SizedBox(height: 70.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Image.asset(
                        ArdillaAssets.videoImage,
                        height: 270.h,
                        width: 380.w,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: const NormalText(
                  text: "Explore",
                  textColor: ArdillaColor.purpleColor,
                ),
              ),

              SizedBox(height: 40.h),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 32.h),
                    SizedBox(
                      width: 1069.w,
                      height: 200.h,
                      child: Stack(
                        children: [
                          Image.asset(
                            ArdillaAssets.exploreBgImage,
                            width: 1069.w,
                            height: 200.h,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 55.h,
                                  left: 50.w,
                                  bottom: 55.h,
                                ),
                                child: Row(
                                  children: [
                                    const ExploreItem(
                                      title: "My Family and I",
                                      description:
                                          "A Family that stay together stays forever",
                                    ),
                                    SizedBox(width: 55.w),
                                    const ExploreDemarcation(),
                                    SizedBox(width: 55.w),
                                    const ExploreItem(
                                      title: "Invest With Hargon",
                                      description: "Loan as an investment",
                                    ),
                                    SizedBox(width: 55.w),
                                    const ExploreDemarcation(),
                                    SizedBox(width: 55.w),
                                    const ExploreItem(
                                      title: "Business with Ardilla",
                                      description:
                                          "A Partnership where you Earn!",
                                    ),
                                    SizedBox(width: 55.w),
                                    const ExploreDemarcation(),
                                    SizedBox(width: 55.w),
                                    const ExploreItem(
                                      title: "Tax Save",
                                      description:
                                          "Where you save while spending",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 32.h),
                  ],
                ),
              ),

              SizedBox(height: 45.h),
            ],
          ),
        ),
      ),
    );
  }
}

class ExploreDemarcation extends StatelessWidget {
  const ExploreDemarcation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      width: 1,
      color: Colors.white,
    );
  }
}

class ExploreItem extends StatelessWidget {
  const ExploreItem({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NormalText(
          text: title,
          textColor: Colors.white,
        ),
        SizedBox(height: 10.h),
        SmallText(
          text: description,
          textColor: Colors.white,
        ),
        SizedBox(height: 15.h),
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

class ArrowWidgets extends StatelessWidget {
  const ArrowWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 55.h,
        width: 100.w,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ArdillaAssets.arrowBack,
              height: 30.h,
              width: 30.w,
            ),
            Image.asset(
              ArdillaAssets.arrowForward,
              height: 55.h,
              width: 55.w,
            ),
          ],
        ),
      ),
    );
  }
}

class BoxRowWidget extends StatelessWidget {
  const BoxRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.0.w),
      child: Wrap(
        spacing: 20.w,
        children: const [
          BoxWidget(
            name: "SAN",
            assetName: ArdillaAssets.box1,
          ),
          BoxWidget(
            name: "Save",
            assetName: ArdillaAssets.box2,
          ),
          BoxWidget(
            name: "Learn",
            assetName: ArdillaAssets.box3,
          ),
          BoxWidget(
            name: "Payment",
            assetName: ArdillaAssets.box4,
          ),
        ],
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    super.key,
    required this.name,
    required this.assetName,
  });

  final String name;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          assetName,
          height: 63.h,
          width: 60.w,
        ),
        SizedBox(height: 5.h),
        SmallText(
          text: name,
          textColor: ArdillaColor.purpleColor,
        ),
      ],
    );
  }
}
