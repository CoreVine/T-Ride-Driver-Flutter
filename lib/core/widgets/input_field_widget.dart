import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';

class InputFieldWidget extends StatefulWidget {
  InputFieldWidget({
    super.key,
    required this.textController,
    required this.labelText,
    this.keyboardType,
    required this.validator,
    this.suffixIcon,
    this.showObscureIcon = false,
    this.obscureText = false,
  });

  final TextEditingController textController;
  final String labelText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String? value) validator;
  bool showObscureIcon;
  bool obscureText;

  @override
  State<InputFieldWidget> createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Text(widget.labelText, style: AppTextStyles.roboto14Regular),
          ),
          TextFormField(
            keyboardType: widget.keyboardType,
            obscureText: widget.obscureText,
            controller: widget.textController,
            decoration: InputDecoration(
              hintText: widget.labelText,
              hintStyle: TextStyle(color: AppColors.black),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.silver),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.orange),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.silver),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.red),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              suffixIcon:
                  widget.showObscureIcon
                      ? IconButton(
                        icon: Icon(
                          widget.obscureText
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: AppColors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            widget.obscureText = !widget.obscureText;
                          });
                        },
                      )
                      : widget.suffixIcon,
            ),
            validator: widget.validator,
          ),
        ],
      ),
    );
  }
}
