import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vednroo_ui/widget/colors.dart';

import '../widget/custom_image.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomeImageLoader(
              boxFit: BoxFit.fitWidth,
              imagePath: 'asset/image/logo-vendroo user 1.png',
              hight: 100.h,
              width: 140.w,
            ),
          ],
        ),
      ),
    );
  }
}
