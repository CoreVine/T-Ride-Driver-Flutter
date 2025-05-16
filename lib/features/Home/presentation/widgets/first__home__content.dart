import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tride/core/helpers/measures.dart';
import 'package:tride/core/theming/app_assets.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class FirstHomeContent extends StatefulWidget {
  final String headText;
  final String subText;
  final String assetPath;
  final Widget? customButton;

  const FirstHomeContent(
      {super.key,
      required this.headText,
      required this.subText,
      required this.assetPath,
      this.customButton});

  @override
  State<FirstHomeContent> createState() => _FirstHomeContentState();
}

class _FirstHomeContentState extends State<FirstHomeContent>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller with 1.5 second duration
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // Create scale animation that starts slightly smaller and grows to full size
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.8, curve: Curves.easeOutBack),
      ),
    );

    // Create opacity animation that fades in the SVG
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.6, curve: Curves.easeIn),
      ),
    );

    // Start the animation when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 48.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.headText,
            style: AppTextStyles.roboto24Bold(context),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppMeasures.gap16),
          Text(
            widget.subText,
            style: AppTextStyles.roboto14Regular(context),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppMeasures.gap32),

          // Animated SVG asset
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: Transform.scale(
                  scale: _scaleAnimation.value,
                  child: child,
                ),
              );
            },
            child: SvgPicture.asset(widget.assetPath),
          ),
          SizedBox(height: AppMeasures.gap16,),
          widget.customButton ?? SizedBox()
        ],
      ),
    );
  }
}
