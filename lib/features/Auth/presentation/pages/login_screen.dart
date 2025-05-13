import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/helpers/padding_extension.dart';
import 'package:tride/generated/l10n.dart';

import '../../../../core/widgets/input_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
                child: CustomTextField(
                    textController: TextEditingController(),
                    labelText: "Email",
                    validator: (validate) {}))
            .paddingSymmetric(horizontal: 10.w),
        SizedBox(
          height: 10.h,
        ),
        Center(
                child: CustomTextField(
                    textController: TextEditingController(),
                    labelText: "Email",
                    validator: (validate) {}))
            .paddingSymmetric(horizontal: 10.w),
      ],
    ));
  }
}
