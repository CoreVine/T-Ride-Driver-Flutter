import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/theming/app_colors.dart';

class PickImageWidget extends StatelessWidget {
  const PickImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // CircleAvatar(
        //   radius: 80.r,
        //   backgroundImage: const AssetImage(AppAssets.img1),
        // ),
        Positioned(
          bottom: 11,
          right: 11,
          child: SizedBox(
            height: 24.h,
            width: 24.w,
            child: FittedBox(
              child: CircleAvatar(
                backgroundColor: AppColors.red,
                child: IconButton(
                  onPressed: () {
                    //TODO pick image
                  },
                  icon: const Icon(Icons.camera_alt_rounded),
                  color: AppColors.red,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
