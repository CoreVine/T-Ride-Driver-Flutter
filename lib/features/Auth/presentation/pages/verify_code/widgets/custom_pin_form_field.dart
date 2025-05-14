
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_text_styles.dart';

class PinFormField extends StatefulWidget {
  final double? width;
  final double? height;
  final TextStyle style;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;

  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;

  final TextStyle? textHintStyle;
  final bool? showCursor;

  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;

  final String? hintText;
  final double? borderRadius;

  const PinFormField({
    super.key,
    this.width,
    this.height,
    required this.style,
    this.onChanged,
    this.controller,
    this.focusNode,
    this.decoration,
    this.keyboardType,
    this.textAlign,
    this.textAlignVertical,
    this.textHintStyle,
    this.showCursor,
    this.validator,
    this.inputFormatters,
    this.hintText,
    this.borderRadius,
  });

  @override
  _PinFormFieldState createState() => _PinFormFieldState();
}

class _PinFormFieldState extends State<PinFormField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      alignment: Alignment.center,
      // decoration: BoxDecoration(
      //   shape: BoxShape.circle,
      //   border: Border.all(color: AppColors.gray, width: 1.5.w),
      // ),
      child: TextFormField(
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        maxLength: 1,
        controller: _controller,
        focusNode: widget.focusNode,
        decoration: widget.decoration ?? _defaultTextInputDecoration(),
        keyboardType: widget.keyboardType,
        style: widget.style,
        cursorHeight: 16.h,
        cursorColor: AppColors.orange,
        cursorWidth: 3.w,
        textAlignVertical: widget.textAlignVertical,
        showCursor: widget.showCursor,
        textAlign: TextAlign.center,
        inputFormatters: widget.inputFormatters,
        onChanged: widget.onChanged,
        validator: widget.validator,
      ),
    );
  }

  InputDecoration _defaultTextInputDecoration() => InputDecoration(
    counterText: "",
    hintText: widget.hintText ?? '',
    errorStyle: const TextStyle(fontSize: 0, height: 0),
    hintStyle: widget.textHintStyle ??
        AppTextStyles.roboto14Medium,
    contentPadding: EdgeInsets.zero,
    errorMaxLines: 1,
    errorBorder: OutlineInputBorder(
      borderSide:  BorderSide(
        color: AppColors.red,
        width: 1.5.w,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.darkGray,
        width: 1.5.w,
      ),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.gray,
        width: 1.5.w,
      ),
    ),
  );
}
