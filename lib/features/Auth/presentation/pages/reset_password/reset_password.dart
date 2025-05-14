import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/helpers/measures.dart';
import 'package:tride/core/helpers/padding_extension.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/core/utils/validation_utils.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/core/widgets/input_field_widget.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/show_default_dialog.dart';
import '../../../../../generated/l10n.dart';
import '../../cubit/auth_cubit.dart';
import '../../widgets/reset_password_dialog.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: cubit.resetPasswordFormKey,
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) async {
                if (state is PasswordChangesSuccessfully) {
                  await showDefaultDialog(context,
                      child: ResetPasswordDialog());
                  context.pushReplacementNamed(Routes.loginScreen);
                }
              },
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: AppMeasures.gap24),
                    Text(
                      S.of(context).resetPassword,
                      style: AppTextStyles.roboto24SemiBold(context),
                    ),
                    SizedBox(height: AppMeasures.gap48),
                    CustomTextField(
                      textController: cubit.passwordController,
                      labelText: S.of(context).newPassword,
                      isObscure: cubit.isPasswordObscure,
                      suffixIcon: IconButton(
                        icon: Icon(
                          cubit.isPasswordObscure
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                        onPressed: cubit.changePasswordVisibility,
                      ),
                      validator: (value) =>
                          ValidationUtils().validatePassword(value),
                    ),
                    SizedBox(height: AppMeasures.gap24),
                    CustomTextField(
                      textController: cubit.confirmPasswordController,
                      labelText: S.of(context).confirmPassword,
                      isObscure: cubit.isConfirmPasswordObscure,
                      suffixIcon: IconButton(
                        icon: Icon(
                          cubit.isPasswordObscure
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                        onPressed: cubit.changeConfirmPasswordVisibility,
                      ),
                      validator: (value) => ValidationUtils()
                          .validateConfirmPassword(
                              value, cubit.passwordController.text),
                    ),
                    SizedBox(height: AppMeasures.gap48),
                    CustomButton(
                      text: S.of(context).setPassword,
                      yPadding: 15.h,
                      onPressed: () {
                        cubit.submitNewPassword();
                      },
                    ),
                  ],
                ).paddingSymmetric(horizontal: 20.w, vertical: 20.h);
              },
            ),
          ),
        ),
      ),
    );
  }
}
