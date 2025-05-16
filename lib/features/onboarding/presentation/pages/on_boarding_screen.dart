import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tride/core/helpers/padding_extension.dart';
import 'package:tride/core/routing/app_router.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/features/onboarding/presentation/manager/on_boarding_cubit.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../generated/l10n.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnBoardingCubit>();
    List<OnboardingPage> pages = [
      OnboardingPage(
          title: S.of(context).firstOnBoardingTitle,
          description: S.of(context).firstOnBoardingDesc,
          imagePath: AppAssets.firstOnBoarding),
      OnboardingPage(
        title: S.of(context).secondOnBoardingTitle,
        description: S.of(context).secondOnBoardingDesc,
        imagePath: AppAssets.secondOnBoarding,
      ),
      OnboardingPage(
        title: S.of(context).thirdOnBoardingTitle,
        description: S.of(context).thirdOnBoardingDesc,
        imagePath: AppAssets.thirdOnBoarding,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (int page) => cubit.updateIndex(page),
                    itemCount: pages.length,
                    itemBuilder: (context, index) {
                      return _buildPage(pages[index]);
                    },
                  ),
                ),
                _buildPageIndicator(cubit),
                _buildButtons(cubit),
                SizedBox(height: 16.h),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildPage(OnboardingPage page) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          page.title,
          style: AppTextStyles.roboto24Bold(context),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: 250.w,
          child: Text(
            page.description,
            style: AppTextStyles.roboto14Medium(context)
                .copyWith(color: AppColors.darkGray),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 40.h),
        Expanded(
          child: SvgPicture.asset(
            page.imagePath,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 40.h),
      ],
    ).paddingSymmetric(horizontal: 24.w, vertical: 20.h);
  }

  Widget _buildPageIndicator(OnBoardingCubit cubit) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        cubit.numPages,
        (index) => _buildPageIndicatorItem(index, cubit),
      ),
    ).paddingSymmetric(vertical: 16.h);
  }

  Widget _buildPageIndicatorItem(int index, OnBoardingCubit cubit) {
    bool isCurrentPage = index == cubit.currentPage;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 10.h,
      width: isCurrentPage ? 40.w : 40.w,
      decoration: BoxDecoration(
        color: isCurrentPage ? AppColors.blue : AppColors.blue30,
      ),
    );
  }

  Widget _buildButtons(OnBoardingCubit cubit) {
    return Column(
      children: [
        CustomButton(
          text: S.of(context).next,
          width: 100.w,
          onPressed: () {
            if (cubit.currentPage < cubit.numPages - 1) {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            } else {
              Navigator.pushReplacementNamed(context, Routes.loginScreen);
            }
          },
        ),
        Visibility(
            visible: cubit.currentPage < cubit.numPages - 1,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.loginScreen);
              },
              child: Text(
                cubit.currentPage < cubit.numPages - 1
                    ? S.of(context).skip
                    : S.of(context).start,
                style: AppTextStyles.roboto18Medium(context),
              ),
            )),
      ],
    ).paddingSymmetric(horizontal: 24.w);
  }
}
