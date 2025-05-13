import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/theming/app_assets.dart';
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
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Scale animation
    _scaleAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    // Rotation animation (full 360 degrees, or 2π radians)
    _rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 2 * 3.14159, // 2π radians for a full rotation
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();

    Timer(const Duration(seconds: 4), () {
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
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: _rotationAnimation.value,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Image.asset(
                    AppAssets.logo,
                    width: 250.w,
                    height: 70.h,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
