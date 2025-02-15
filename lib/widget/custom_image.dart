import 'package:flutter/material.dart';

class CustomeImageLoader extends StatelessWidget {
  final String imagePath;
  final double hight;
  final double width;
  BoxShape shape;
  BoxFit boxFit;
  CustomeImageLoader(
      {super.key,
      required this.imagePath,
      required this.hight,
      required this.width,
      this.boxFit = BoxFit.cover,
      this.shape = BoxShape.rectangle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
          shape: shape,
          borderRadius: shape == BoxShape.circle
              ? null
              : BorderRadius.circular(10), // FIXED

          image: DecorationImage(image: AssetImage(imagePath), fit: boxFit)),
    );
  }
}
