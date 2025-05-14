import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/utils/validation_utils.dart';
import '../../../../../core/widgets/input_field_widget.dart';
import '../../../../../generated/l10n.dart';
import '../../cubit/auth_cubit.dart';
import '../../widgets/auth_layout.dart';
import '../../widgets/social_auth_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      body: SafeArea(
        child: AuthLayout(
          formKey: cubit.formKey,
          title: S.of(context).signUp,
          switchText: S.of(context).login,
          onSwitchTap: () {
            Navigator.pushReplacementNamed(context, Routes.loginScreen);
          },
          buttonText: S.of(context).signUp,
          onButtonTap: () {
            // Handle login
          },
          passwordTextField: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              return CustomTextField(
                textController: cubit.passwordController,
                labelText: S.of(context).password,
                isObscure: cubit.isPasswordObscure,
                suffixIcon: IconButton(
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
        ),
      ),
    );
  }
}
