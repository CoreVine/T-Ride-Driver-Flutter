import 'package:flutter/material.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/generated/l10n.dart';

import 'pick_image_widget.dart';
import 'user_data_form_section.dart';

class UserProfileScreenBody extends StatelessWidget {
  UserProfileScreenBody({super.key});
  final TextEditingController userNameController = TextEditingController(
    text: "Mohammad Ali",
  );
  final TextEditingController phoneController = TextEditingController(
    text: "0123456789",
  );
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).captain_information,
              style: AppTextStyles.roboto24SemiBold(context),
            ),
            SizedBox(height: 32),
            const PickImageWidget(),
            SizedBox(height: 32),
            UserDataFormSection(
              userNameController: userNameController,
              phoneController: phoneController,
              formKey: formKey,
            ),
            SizedBox(height: 48),
            CustomButton(
              text: S.of(context).save,
              bgColor: AppColors.orange,
              textColor: AppColors.white,
              onPressed: () {
                formKey.currentState!.validate();
              },
            ),
          ],
        ),
      ),
    );
  }
}
