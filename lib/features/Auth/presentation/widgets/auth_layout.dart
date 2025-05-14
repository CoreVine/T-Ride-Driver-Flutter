import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/helpers/measures.dart';
import 'package:tride/core/helpers/padding_extension.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/core/utils/validation_utils.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/core/widgets/input_field_widget.dart';

import '../../../../generated/l10n.dart';
import '../cubit/auth_cubit.dart';

class AuthLayout extends StatelessWidget {
  final String title;
  final String switchText;
  final VoidCallback onSwitchTap;
  final String buttonText;
  final VoidCallback onButtonTap;
  final Widget passwordTextField;
  final List<Widget> socialButtons;
  final GlobalKey formKey;

  const AuthLayout({
    super.key,
    required this.title,
    required this.switchText,
    required this.onSwitchTap,
    required this.buttonText,
    required this.onButtonTap,
    required this.socialButtons,
    required this.formKey,
    required this.passwordTextField,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: onSwitchTap,
                  child: Text(
                    switchText,
                    style: AppTextStyles.roboto18Medium,
                  ),
                )
              ],
            ),
            SizedBox(height: AppMeasures.gap24),
            Text(
              title,
              style: AppTextStyles.roboto24SemiBold,
            ),
            SizedBox(height: AppMeasures.gap72),
            CustomTextField(
              textController: cubit.emailController,
              labelText: S.of(context).yourEmail,
              validator: (value) => ValidationUtils().validateEmail(value),
            ),
            SizedBox(height: AppMeasures.gap24),
            passwordTextField,
            SizedBox(height: AppMeasures.gap48),
            CustomButton(
              text: buttonText,
              onPressed: onButtonTap,
              yPadding: 15.h,
            ),
            SizedBox(height: AppMeasures.gap48),
            Center(
              child: Text(
                S.of(context).orSingUpWithSocialAccount,
                style: AppTextStyles.roboto14Medium,
              ),
            ),
            SizedBox(height: AppMeasures.gap20),
            Divider(height: 5.h),
            SizedBox(height: AppMeasures.gap28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: socialButtons,
            ),
            SizedBox(height: AppMeasures.gap24),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: S.of(context).bySigningUpYouAgreeToOur,
                  style: AppTextStyles.roboto14Regular
                      .copyWith(color: Colors.black),
                  children: [
                    TextSpan(
                      text: S.of(context).termsOfUse,
                      style: AppTextStyles.roboto14Regular.copyWith(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(
                      text: S.of(context).and,
                    ),
                    TextSpan(
                      text: S.of(context).privacyPolicy,
                      style: AppTextStyles.roboto14Regular.copyWith(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ).paddingSymmetric(vertical: 20.h, horizontal: 20.w),
      ),
    );
  }
}
