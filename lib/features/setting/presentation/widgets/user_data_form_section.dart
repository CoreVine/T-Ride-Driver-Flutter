import 'package:flutter/material.dart';
import 'package:tride/core/helpers/extensions.dart';

import 'input_field_widget.dart';

class UserDataFormSection extends StatelessWidget {
  const UserDataFormSection({
    super.key,
    required this.userNameController,
    required this.emailController,
    required this.passwordController,
    required this.phoneController,
    required this.addressController,
    required this.formKey,
  });
  final TextEditingController userNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;
  final TextEditingController addressController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          InputFieldWidget(
            textController: userNameController,
            labelText: "User name",
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value!.isNullOrEmpty()) {
                return "Enter a valid user name";
              } else {
                return null;
              }
            },
          ),
          InputFieldWidget(
            textController: emailController,
            labelText: "Email",
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return "Enter a valid Email";
              } else {
                return null;
              }
            },
          ),
          InputFieldWidget(
            textController: passwordController,
            labelText: "Password",
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return "Enter a valid password";
              } else {
                return null;
              }
            },
          ),
          InputFieldWidget(
            textController: phoneController,
            labelText: "Phone",
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return "Enter a valid phone";
              } else {
                return null;
              }
            },
          ),
          InputFieldWidget(
            textController: addressController,
            labelText: "Address",
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return "Enter a valid address";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );
  }
}
