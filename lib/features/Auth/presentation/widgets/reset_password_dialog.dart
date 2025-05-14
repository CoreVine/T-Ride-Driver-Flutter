import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tride/core/helpers/measures.dart';
import 'package:tride/core/helpers/padding_extension.dart';
import 'package:tride/core/theming/app_assets.dart';

import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class ResetPasswordDialog extends StatelessWidget {
  const ResetPasswordDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.success),
        SizedBox(height: AppMeasures.gap24,),
        Text(
          S.of(context).passwordSetSuccessfully,
          style: AppTextStyles.roboto16Regular,
        ),
      ],
    ).paddingSymmetric(horizontal: 20.w , vertical: 20.h);
  }
}
