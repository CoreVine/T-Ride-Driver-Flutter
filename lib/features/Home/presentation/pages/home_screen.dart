import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tride/core/helpers/measures.dart';
import 'package:tride/core/helpers/padding_extension.dart';
import 'package:tride/core/theming/app_assets.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/features/Home/presentation/widgets/custom_driver_app_bar.dart';
import 'package:tride/features/Home/presentation/widgets/first__home__content.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHomeDriverAppBar(),
              FirstHomeContent(headText: S.of(context).searchForRides,
                  subText: S.of(context).startNowRides,
                  assetPath: AppAssets.startRides,
                customButton: CustomButton(text: S.of(context).start,
                    onPressed: (){},
                  yPadding: 10.h,
                ).paddingSymmetric(horizontal: 100.w),)
            ],
          ),
        ),
      ),
    );
  }
}
