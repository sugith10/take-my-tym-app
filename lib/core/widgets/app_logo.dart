import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:take_my_tym/core/utils/app_images.dart';
import 'package:take_my_tym/core/widgets/svg_image_widget.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [ 
        Text(
      "Where Time Meets Oppurtunity",
      style: TextStyle(fontSize: 17.sp),
    ),
    const SizedBox(height: 20),
    const SVGImageWidget(
      asset: MyAppImages.onboarding,
      height: 40,
    ),
    ],);
  }
}
