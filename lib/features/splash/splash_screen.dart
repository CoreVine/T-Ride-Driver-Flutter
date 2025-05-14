import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/theming/app_assets.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'dart:async';

import '../../core/routing/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Slide animation from left to center
    _slideAnimation = Tween<Offset>(
      begin: const Offset(-2.0, 0.0), // Start from left side of screen
      end: Offset.zero, // End at the center of the screen
    ).animate(CurvedAnimation(
      parent: _controller,
      // Use a curve that gives a car-like movement effect with slight deceleration at the end
      curve: Curves.easeOutCubic,
    ));

    _controller.forward();

    // Navigate to the next screen after the animation completes (with a small delay)
    Timer(const Duration(seconds: 3), () {
      context.pushReplacementNamed(
        Routes.onBoardingScreen,
        // hasTokenConstant
        //     ? Routes.mainScreen
        //     : passedIntroConstant
        //     ? Routes.loginScreen
        //     : Routes.onBoardingScreen,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orange,
      body: Center(
        child: SlideTransition(
          position: _slideAnimation,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Image.asset(
              AppAssets.logo,
              width: 250.w,
              height: 70.h,
            ),
          ),
        ),
      ),
    );
  }
}