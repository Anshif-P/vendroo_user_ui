import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Temporary list of image URLs
    final List<String> imageUrls = [
      'asset/image/WhatsApp Image 2025-02-07 at 16.51.08_f989f32d 1.png',
      'asset/image/WhatsApp Image 2025-02-07 at 16.51.08_f989f32d 1.png',
      'asset/image/WhatsApp Image 2025-02-07 at 16.51.08_f989f32d 1.png',
      'asset/image/WhatsApp Image 2025-02-07 at 16.51.08_f989f32d 1.png',
    ];

    return Center(
      child: CarouselSlider(
        items: imageUrls.map((imageUrl) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl), // Display network image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 168,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          enableInfiniteScroll: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }
}
