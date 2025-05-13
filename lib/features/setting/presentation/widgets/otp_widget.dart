import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';

class OTPWidget extends StatefulWidget {
  const OTPWidget({super.key});

  @override
  State<OTPWidget> createState() => _OTPWidgetState();
}

class _OTPWidgetState extends State<OTPWidget> {
  final List<TextEditingController> _controllers = List.generate(
    6,
    (_) => TextEditingController(),
  );

  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  String getOTP() {
    return _controllers.map((controller) => controller.text).join();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text(
          "Enter code",
          style: AppTextStyles.roboto12Medium.copyWith(color: AppColors.silver),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (index) {
              return Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    textAlign: TextAlign.center,
                    cursorColor: AppColors.orange,
                    style: AppTextStyles.roboto18Medium.copyWith(
                      color:
                          _focusNodes[index].hasFocus
                              ? AppColors.orange
                              : AppColors.silver,
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: '',
                      border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        gapPadding: 10,
                        borderSide: BorderSide(
                          color: AppColors.silver,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 10,
                        borderSide: BorderSide(
                          color: AppColors.orange,
                          width: 1.5,
                        ),
                      ),
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) {
                      if (value.length == 1 && index < 5) {
                        FocusScope.of(
                          context,
                        ).requestFocus(_focusNodes[index + 1]);
                      }
                      if (value.isEmpty && index > 0) {
                        FocusScope.of(
                          context,
                        ).requestFocus(_focusNodes[index - 1]);
                      }
                    },
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
