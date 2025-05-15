import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/helpers/measures.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/core/utils/validation_utils.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/core/widgets/input_field_widget.dart';
import 'package:tride/generated/l10n.dart';

class UpdatePasswordScreenBody extends StatelessWidget {
  const UpdatePasswordScreenBody({super.key});

  _onPressSetPassword(BuildContext context) async {
    await passwordChangedDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppMeasures.padding16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).reset_password,
            style: AppTextStyles.roboto24SemiBold(context),
          ),
          const SizedBox(height: 72),
          InputFieldWidget(
            labelText: S.of(context).new_password,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            showObscureIcon: true,
            textController: TextEditingController(),
            validator: ValidationUtils.validatePassword,
          ),
          const SizedBox(height: 16),
          InputFieldWidget(
            labelText: S.of(context).confirm_new_password,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            showObscureIcon: true,
            textController: TextEditingController(),
            validator: ValidationUtils.validatePassword,
          ),
          const SizedBox(height: 48),
          CustomButton(
            bgColor: AppColors.orange,
            textColor: AppColors.white,
            text: S.of(context).set_password,
            onPressed: () => _onPressSetPassword(context),
          ),
        ],
      ),
    );
  }

  Future<dynamic> passwordChangedDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        Timer(const Duration(seconds: 3), () {
          context.pop();
        });
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 24),
          contentPadding: const EdgeInsets.all(21),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: Colors.white,
          icon: SizedBox(
            width: 80.w,
            height: 80.h,
            child: FittedBox(
              child: CircleAvatar(
                backgroundColor: AppColors.green,
                child: Icon(Icons.check_rounded, color: AppColors.white),
              ),
            ),
          ),
          content: Text(
            S.of(context).password_set_successfully,
            style: AppTextStyles.roboto16Medium(context),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
