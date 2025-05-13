import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tride/core/routing/routes.dart';
import 'package:tride/features/Auth/presentation/pages/login_screen.dart';
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
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<OnBoardingCubit>(),
              child: OnboardingScreen(),
            ));
      // case Routes.signUpScreen:
      //   return MaterialPageRoute(builder: (_) => const SignupScreen());

      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
    return null;
  }
}
