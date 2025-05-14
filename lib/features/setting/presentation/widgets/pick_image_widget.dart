import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tride/core/theming/app_assets.dart';
import 'package:tride/core/theming/app_colors.dart';

class PickImageWidget extends StatefulWidget {
  const PickImageWidget({super.key});

  @override
  State<PickImageWidget> createState() => _PickImageWidgetState();
}

class _PickImageWidgetState extends State<PickImageWidget> {
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 120.w,
        height: 120.h,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 80.r,
              backgroundImage:
                  _imageFile != null
                      ? FileImage(_imageFile!)
                      : const AssetImage(AppAssets.capImage) as ImageProvider,
            ),
            Positioned(
              bottom: 11,
              right: 11,
              child: SizedBox(
                height: 24.h,
                width: 24.w,
                child: FittedBox(
                  child: CircleAvatar(
                    backgroundColor: AppColors.gray,
                    child: IconButton(
                      onPressed: () {
                        _pickImage();
                      },
                      icon: const Icon(Icons.edit_square),
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
