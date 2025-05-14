import 'package:flutter/material.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/generated/l10n.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({super.key});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  String? selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).gender,
          style: AppTextStyles.roboto12Medium.copyWith(
            color: AppColors.darkGray,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio<String>(
              value: 'Male',
              groupValue: selectedGender,
              onChanged: _onChooseMale,
              activeColor: AppColors.blue,
            ),
            Text(S.of(context).male, style: AppTextStyles.roboto16Medium),
            SizedBox(width: 24),
            Radio<String>(
              value: 'Female',
              groupValue: selectedGender,
              onChanged: _onChooseFemale,
              activeColor: AppColors.blue,
            ),
            Text(S.of(context).female, style: AppTextStyles.roboto16Medium),
          ],
        ),
      ],
    );
  }

  void _onChooseFemale(String? value) {
    setState(() {
      selectedGender = value;
    });
  }

  void _onChooseMale(String? value) {
    setState(() {
      selectedGender = value;
    });
  }
}
