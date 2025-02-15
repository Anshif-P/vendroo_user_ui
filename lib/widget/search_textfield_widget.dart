import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vednroo_ui/widget/colors.dart';
import 'package:vednroo_ui/widget/custom_image.dart';
import 'package:vednroo_ui/widget/styles.dart';

class SearchTextfieldWidget extends StatelessWidget {
  final String hintText;
  const SearchTextfieldWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.lightGreyColor),
      child: TextField(
        style: AppText.tSmallGrey,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: AppText.tSmallGrey,
            prefixIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomeImageLoader(
                  imagePath: 'asset/image/Group (1).png',
                  hight: 20.h,
                  width: 20.w,
                  boxFit: BoxFit.fitHeight,
                ),
              ],
            ),
            hintText: hintText),
      ),
    );
  }
}
