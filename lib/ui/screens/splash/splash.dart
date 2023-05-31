import 'package:ardilla/constant/asset_path.dart';
import 'package:ardilla/ui/screens/onboarding/onboarding.dart';
import 'package:ardilla/ui/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
      () => navigatorTransparentRoute(context, const OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8807F7),
      body: Stack(
        children: [
          Image.asset(
            ArdillaAssets.vectorImage,
          ),
          Center(
            child: Image.asset(
              ArdillaAssets.logoFull,
              width: 150.w,
              height: 160.h,
            ),
          ),
        ],
      ),
    );
  }
}
