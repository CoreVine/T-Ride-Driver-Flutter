import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/helpers/padding_extension.dart';
import 'package:tride/features/Auth/presentation/pages/verify_code/widgets/custom_pin_submission.dart';

import '../../../../../core/helpers/measures.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/utils/validation_utils.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/input_field_widget.dart';
import '../../../../../generated/l10n.dart';
import '../../cubit/auth_cubit.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      body: SafeArea(
          child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthCodeVerified) {
            context.pushNamed(Routes.resetPassword);
          }
        },
        child: Form(
          key: cubit.verifyCodeFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      cubit.returnBack();
                      context.pushReplacementNamed(Routes.loginScreen);
                    },
                    child: Text(
                      S.of(context).back,
                      style: AppTextStyles.roboto18Medium,
                    ),
                  )
                ],
              ),
              SizedBox(height: AppMeasures.gap24),
              Text(
                S.of(context).emailVerification,
                style: AppTextStyles.roboto24SemiBold,
              ),
              SizedBox(height: AppMeasures.gap72),
              CustomPinSubmissionWidget(
                onChanged: (p0, p1) {},
                verificationCode: cubit.code,
              ).paddingSymmetric(horizontal: 24.w),
              SizedBox(height: AppMeasures.gap48),
              CustomButton(
                text: S.of(context).confirm,
                onPressed: () {
                  cubit.sendCode();
                },
                yPadding: 15.h,
              ),
              SizedBox(
                height: AppMeasures.gap32,
              ),
              Divider(height: 5.h),
              SizedBox(
                height: 20.h,
              ),
              Center(
                  child: Text(
                S.of(context).resendTheCode,
                style: AppTextStyles.roboto14Medium.copyWith(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
              ))
            ],
          ).paddingSymmetric(vertical: 20.h, horizontal: 10.w),
        ),
      )),
    );
  }
}
