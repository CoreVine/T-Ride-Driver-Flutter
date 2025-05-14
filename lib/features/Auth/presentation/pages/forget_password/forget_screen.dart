import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/helpers/padding_extension.dart';
import 'package:tride/core/routing/routes.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/features/Auth/presentation/cubit/auth_cubit.dart';

import '../../../../../core/helpers/measures.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/utils/validation_utils.dart';
import '../../../../../core/widgets/input_field_widget.dart';
import '../../../../../generated/l10n.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      body: SafeArea(
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
            S.of(context).forgetPassword,
            style: AppTextStyles.roboto24SemiBold,
          ),
          SizedBox(height: AppMeasures.gap72),
          CustomTextField(
            textController: cubit.emailController,
            labelText: S.of(context).yourEmail,
            validator: (value) => ValidationUtils().validateEmail(value),
          ),
          SizedBox(height: AppMeasures.gap48),
          CustomButton(
            text: S.of(context).sendCode,
            onPressed: () {
              Navigator.pushNamed(context, Routes.verifyCode);
            },
            yPadding: 15.h,
          )
        ],
      ).paddingSymmetric(vertical: 20.h, horizontal: 20.w)),
    );
  }
}
