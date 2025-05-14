import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tride/core/theming/app_assets.dart';

import '../../../../generated/l10n.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  int currentPage = 0;
  final int numPages = 3;

  void updateIndex(int index) {
    currentPage = index;
    emit(OnBoardingScreenUpdated());
  }
}

class OnboardingPage {
  final String title;
  final String description;
  final String imagePath;

  OnboardingPage({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}
