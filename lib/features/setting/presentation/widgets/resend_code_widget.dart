import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_font_weights.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/generated/l10n.dart';

class ResendCodeWidget extends StatefulWidget {
  const ResendCodeWidget({super.key, required this.onResend});
  final VoidCallback onResend;

  @override
  State<ResendCodeWidget> createState() => _ResendCodeWidgetState();
}

class _ResendCodeWidgetState extends State<ResendCodeWidget> {
  int _seconds = 60;
  late Timer _timer;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds > 0) {
          _seconds--;
        } else {
          _canResend = true;
          _timer.cancel();
        }
      });
    });
  }

  void resendCode() {
    setState(() {
      _seconds = 60;
      _canResend = false;
      startTimer();
    });
    widget.onResend();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: _canResend ? resendCode : null,
          child: Text(
            S.of(context).resend_the_code,
            style: AppTextStyles.roboto14Medium(context).copyWith(
              fontWeight: AppFontWeights.fontWeightBold,
              color: _canResend ? Colors.orange : AppColors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        SizedBox(width: 8),
        Text(
          "0:${_seconds.toString().padLeft(2, '0')}",
          style: AppTextStyles.roboto14Medium(context),
        ),
      ],
    );
  }
}
