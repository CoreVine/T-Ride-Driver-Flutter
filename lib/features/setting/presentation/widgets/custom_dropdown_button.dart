import 'package:flutter/material.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';

class CustomDropdownButton<T> extends StatefulWidget {
  final String label;
  final List<T> items;
  final T? value;
  final String? hint;
  final Function(T?) onChanged;
  final TextStyle? labelStyle;

  const CustomDropdownButton({
    super.key,
    required this.label,
    required this.items,
    required this.value,
    this.hint,
    required this.onChanged,
    this.labelStyle,
  });

  @override
  State<CustomDropdownButton<T>> createState() =>
      _CustomDropdownButtonState<T>();
}

class _CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: AppTextStyles.roboto12Medium.copyWith(
              color: AppColors.darkGray,
            ),
          ),
          DropdownButton<T>(
            hint: widget.hint != null ? Text(widget.hint!) : null,
            value: widget.value,
            items:
                widget.items.map((T value) {
                  return DropdownMenuItem<T>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
            onChanged: widget.onChanged,
          ),
        ],
      ),
    );
  }
}
