import 'package:flutter/material.dart';

import 'measures.dart';

extension SpacingExtensions on Widget {
  Widget get smallVerticalSpacer => const SizedBox(height: AppMeasures.small);
  Widget get mediumVerticalSpacer => const SizedBox(height: AppMeasures.medium);
  Widget get largeVerticalSpacer => const SizedBox(height: AppMeasures.large);
  Widget get smallHorizontalSpacer => const SizedBox(width: AppMeasures.small);
  Widget get mediumHorizontalSpacer =>
      const SizedBox(width: AppMeasures.medium);
  Widget get largeHorizontalSpacer => const SizedBox(width: AppMeasures.large);
  Widget withSmallPadding() {
    return Padding(
      padding: const EdgeInsets.all(AppMeasures.small),
      child: this,
    );
  }

  Widget withMediumPadding() {
    return Padding(
      padding: const EdgeInsets.all(AppMeasures.medium),
      child: this,
    );
  }

  Widget withLargePadding() {
    return Padding(
      padding: const EdgeInsets.all(AppMeasures.large),
      child: this,
    );
  }
}

extension EdgeInsetsExtensions on BuildContext {
  EdgeInsets get smallPadding => const EdgeInsets.all(AppMeasures.small);
  EdgeInsets get mediumPadding => const EdgeInsets.all(AppMeasures.medium);
  EdgeInsets get largePadding => const EdgeInsets.all(AppMeasures.large);
}
