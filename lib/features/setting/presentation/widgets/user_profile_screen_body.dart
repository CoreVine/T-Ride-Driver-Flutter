import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/helpers/spacing.dart';

import 'edit_profile_action_section.dart';
import 'pick_image_widget.dart';
import 'user_data_form_section.dart';

class UserProfileScreenBody extends StatelessWidget {
  UserProfileScreenBody({super.key});
  final TextEditingController userNameController = TextEditingController(
    text: "Hayam Tarek",
  );
  final TextEditingController emailController = TextEditingController(
    text: "Hayam@gmail.com",
  );
  final TextEditingController passwordController = TextEditingController(
    text: "888888",
  );
  final TextEditingController phoneController = TextEditingController(
    text: "0123456789",
  );
  final TextEditingController addressController = TextEditingController(
    text: "Mokkatam",
  );
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            mediumHorizontalSpacer,
            const PickImageWidget(),
            SizedBox(height: 46.h),
            UserDataFormSection(
              userNameController: userNameController,
              emailController: emailController,
              passwordController: passwordController,
              phoneController: phoneController,
              addressController: addressController,
              formKey: formKey,
            ),
            SizedBox(height: 46.h),
            EditProfileActionsSection(
              userNameController: userNameController,
              emailController: emailController,
              passwordController: passwordController,
              phoneController: phoneController,
              addressController: addressController,
              formKey: formKey,
            ),
          ],
        ),
      ),
    );
  }
}
