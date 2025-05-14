import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tride/core/theming/app_assets.dart';
import 'package:tride/generated/l10n.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/utils/validation_utils.dart';
import '../../../../../core/widgets/input_field_widget.dart';
import '../../cubit/auth_cubit.dart';
import '../../widgets/auth_layout.dart';
import '../../widgets/social_auth_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
        body: SafeArea(
            child: AuthLayout(
      formKey: cubit.formKey,
      title: S.of(context).login,
      switchText: S.of(context).signUp,
      onSwitchTap: () {
        Navigator.pushNamed(context, Routes.signUpScreen);
        // Navigate to sign up
      },
      buttonText: S.of(context).login,
      onButtonTap: () {
        // Handle login
      },
      passwordTextField: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final showForget = state is AuthShowForgetPassword;
          return CustomTextField(
            textController: cubit.passwordController,
            labelText: S.of(context).password,
            isObscure: cubit.isPasswordObscure,
            suffixIcon: showForget
                ? GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.forgetPasswordScreen);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        S.of(context).forgetPassword,
                        style: AppTextStyles.roboto14Medium,
                      ),
                    ),
                  )
                : IconButton(
                    icon: cubit.isPasswordObscure
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                    onPressed: () => cubit.changePasswordVisibility(),
                  ),
            validator: (value) => ValidationUtils().validatePassword(value),
          );
        },
      ),
      socialButtons: [
        SocialAuthButton(
          label: S.of(context).facebook,
          imagePath: AppAssets.facebook,
          onButtonTap: () {
            // Handle Facebook login
          },
        ),
        SocialAuthButton(
          label: S.of(context).google,
          imagePath: AppAssets.google,
          onButtonTap: () {
            // Handle Google login
          },
        ),
      ],
    )));
  }
}
