import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/utils/governorates.dart';
import 'package:tride/core/utils/validation_utils.dart';
import 'package:tride/core/utils/work_areas.dart';
import 'package:tride/core/widgets/input_field_widget.dart';
import 'package:tride/features/setting/presentation/widgets/custom_dropdown_button.dart';
import 'package:tride/features/setting/presentation/widgets/gender_widget.dart';
import 'package:tride/generated/l10n.dart';

class UserDataFormSection extends StatefulWidget {
  const UserDataFormSection({
    super.key,
    required this.userNameController,
    required this.phoneController,
    required this.formKey,
  });
  final TextEditingController userNameController;
  final TextEditingController phoneController;
  final GlobalKey<FormState> formKey;

  @override
  State<UserDataFormSection> createState() => _UserDataFormSectionState();
}

class _UserDataFormSectionState extends State<UserDataFormSection> {
  String? selectedGovernorate = 'Al-Fayoum';
  String? selectedWorkArea = '24 Shobra El Namla St..';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        spacing: 24.h,
        children: [
          InputFieldWidget(
            textController: widget.userNameController,
            labelText: S.of(context).captain_name,
            keyboardType: TextInputType.text,
            validator: ValidationUtils.validateUsername,
          ),
          InputFieldWidget(
            textController: widget.phoneController,
            labelText: S.of(context).phone_number,
            keyboardType: TextInputType.phone,
            validator: ValidationUtils.validatePhoneNumber,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomDropdownButton(
                label: S.of(context).governorate,
                items: governorates,
                value: selectedGovernorate,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedGovernorate = newValue;
                  });
                },
              ),
              CustomDropdownButton(
                label: S.of(context).work_area,
                items: workAreas,
                value: selectedWorkArea,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedWorkArea = newValue;
                  });
                },
              ),
            ],
          ),
          GenderWidget(),
        ],
      ),
    );
  }
}
