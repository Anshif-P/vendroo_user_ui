import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vednroo_ui/widget/colors.dart';

class AppText {
  static TextStyle get standerdSize =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w600);

  static TextStyle get standerdSizeWhite => const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white);

  static TextStyle get h1Dark => const TextStyle(
      overflow: TextOverflow.ellipsis,
      fontSize: 19,
      fontWeight: FontWeight.w600,
      color: AppColor.black);

  static TextStyle get xsLargeDark => const TextStyle(
      fontSize: 21, fontWeight: FontWeight.w600, color: AppColor.black);

  static TextStyle get smallDark => const TextStyle(
        fontSize: 12,
        color: AppColor.textPrimary,
      );

  static TextStyle get smallBoldDark => const TextStyle(
        fontSize: 6,
        fontWeight: FontWeight.w600,
        color: AppColor.textPrimary,
      );
  static TextStyle get xSmallBoldDark => const TextStyle(
        fontSize: 5,
        fontWeight: FontWeight.w600,
        color: AppColor.textPrimary,
      );
  static TextStyle get smallGrey => const TextStyle(
        fontSize: 12,
        color: AppColor.grey,
      );
  static TextStyle get smallLight => const TextStyle(
        fontSize: 12,
        color: AppColor.textSecondary,
      );
  static TextStyle get mediumdark => const TextStyle(
        fontSize: 16,
        color: AppColor.secondaryColor,
      );
  static TextStyle get mediumSemiBoldDark => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColor.secondaryColor,
      );
  static TextStyle get mediumBoldDark => TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
        color: AppColor.secondaryColor,
      );

  static TextStyle get tSmallGrey => TextStyle(
        fontSize: 10.sp,
        overflow: TextOverflow.ellipsis,
        color: AppColor.grey,
      );

  static TextStyle get tSmallDark => TextStyle(
        fontSize: 10.sp,
        overflow: TextOverflow.ellipsis,
        color: AppColor.black,
      );
  static TextStyle get tSmallRed => TextStyle(
        fontSize: 10.sp,
        overflow: TextOverflow.ellipsis,
        color: AppColor.error,
      );
  static TextStyle get txSmallDark => TextStyle(
        fontSize: 6.sp,
        overflow: TextOverflow.ellipsis,
        color: AppColor.black,
      );
  static TextStyle get txSmallBoldDark => TextStyle(
        fontSize: 7.sp,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.w500,
        color: AppColor.black,
      );

  static TextStyle get tMediumDark => TextStyle(
        fontSize: 12.sp,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.w500,
        color: AppColor.black,
      );

  static TextStyle get tLargeDark => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
        color: AppColor.black,
      );

  static TextStyle get tH1Dark => TextStyle(
        fontSize: 15.sp,
        overflow: TextOverflow.ellipsis,
        color: AppColor.grey,
      );
  static TextStyle get mediumBoldLight => TextStyle(
        fontSize: 10.sp,
        overflow: TextOverflow.ellipsis,
        color: AppColor.white,
      );
  static TextStyle get defautTitleDark => const TextStyle(
        fontSize: 19,
        color: AppColor.secondaryColor,
      );

  static TextStyle get standardDark => TextStyle(
      fontSize: 15.sp,
      color: AppColor.secondaryColor,
      fontWeight: FontWeight.w500);

  static TextStyle get standardBoldDark => const TextStyle(
      fontSize: 15,
      color: AppColor.secondaryColor,
      fontWeight: FontWeight.w600);

  static TextStyle get mediumLight => const TextStyle(
        fontSize: 16,
        color: Colors.white,
      );
  static TextStyle get mediumPrimary => const TextStyle(
        fontSize: 16,
        color: AppColor.primaryColor,
      );
  static TextStyle get mediumlightGrey => const TextStyle(
        fontSize: 16,
        color: AppColor.lightGreyColor,
      );
  static TextStyle get mediumGrey => const TextStyle(
        fontSize: 16,
        color: AppColor.grey,
      );
  static TextStyle get largeDark => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: AppColor.secondaryColor,
      );
  static TextStyle get largeLight => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
  static TextStyle get xLarge => const TextStyle(
        fontSize: 39,
        fontWeight: FontWeight.w500,
        color: AppColor.textPrimary,
      );

  static TextStyle get toSmallLineThrough => const TextStyle(
      decoration: TextDecoration.lineThrough,
      decorationColor: Colors.grey,
      color: Colors.grey,
      fontSize: 10,
      overflow: TextOverflow.ellipsis);
}
