import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tride/core/routing/routes.dart';
import 'package:tride/features/Auth/presentation/cubit/auth_cubit.dart';
import 'package:tride/features/Auth/presentation/pages/forget_password/forget_screen.dart';
import 'package:tride/features/Auth/presentation/pages/login_screen/login_screen.dart';
import 'package:tride/features/Auth/presentation/pages/register_screen/register_screen.dart';
import 'package:tride/features/Auth/presentation/pages/reset_password/reset_password.dart';
import 'package:tride/features/Auth/presentation/pages/verify_code/verify_code_screen.dart';
import 'package:tride/features/Home/presentation/cubit/home_cubit.dart';
import 'package:tride/features/Home/presentation/pages/home_screen.dart';
import 'package:tride/features/onboarding/presentation/pages/on_boarding_screen.dart';
import 'package:tride/features/splash/splash_screen.dart';

import '../../features/onboarding/presentation/manager/on_boarding_cubit.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<AuthCubit>(),
                  child: LoginScreen(),
                ));
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<AuthCubit>(),
                  child: ForgetPasswordScreen(),
                ));
      case Routes.resetPassword:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<AuthCubit>(),
                  child: ResetPasswordScreen(),
                ));
      case Routes.verifyCode:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<AuthCubit>(),
                  child: VerifyCodeScreen(),
                ));
      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<AuthCubit>(),
                  child: RegisterScreen(),
                ));
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<OnBoardingCubit>(),
                  child: OnboardingScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<HomeCubit>(),
              child: HomeScreen(),
            ));
      // case Routes.signUpScreen:
      //   return MaterialPageRoute(builder: (_) => const SignupScreen());

      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
    return null;
  }
}
