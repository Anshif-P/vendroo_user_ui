import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vednroo_ui/widget/colors.dart';
import 'package:vednroo_ui/widget/custom_image.dart';
import 'package:vednroo_ui/widget/screen_utils.dart';
import 'package:vednroo_ui/widget/styles.dart';

import '../widget/carousel_widget.dart';
import '../widget/search_textfield_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kHeight15,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomeImageLoader(
                              boxFit: BoxFit.fitWidth,
                              imagePath: 'asset/image/logo-vendroo user 1.png',
                              hight: 30.h,
                              width: 70.w,
                            ),
                            CustomeImageLoader(
                              boxFit: BoxFit.fitWidth,
                              imagePath: 'asset/image/Group 32.png',
                              hight: 27.h,
                              width: 10.w,
                            ),
                          ],
                        ),
                        kHeight,
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: AppColor.grey,
                            ),
                            Text(
                              'puthiyatheru, kannur',
                              style: AppText.tSmallGrey,
                            )
                          ],
                        ),
                        kHeight,
                        SearchTextfieldWidget(
                          hintText: 'Search product, service or store name',
                        ),
                        kHeight,
                        Text(
                          'Advertisement',
                          style: AppText.tMediumDark,
                        ),
                        kHeight,
                      ],
                    ),
                  ),
                  CarouselWidget(),
                  kHeight,
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Categories',
                      style: AppText.tMediumDark,
                    ),
                  ),
                  kHeight,
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 70.w,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    CustomeImageLoader(
                                        imagePath: 'asset/image/a.png',
                                        hight: 70.h,
                                        width: 60.w),
                                    kHeight3,
                                    Text(
                                      'Electronics &\n  Appliance',
                                      style: AppText.txSmallDark,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Shops Nearby',
                      style: AppText.tMediumDark,
                    ),
                  ),
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.52.w,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.w, horizontal: 4.h),
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'asset/image/WhatsApp Image 2025-02-14 at 13.49.22_f5efb835.png',
                                  ),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Expanded(child: SizedBox()),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                            color: AppColor.cardColor,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Cafe Coffee',
                                                style: AppText.txSmallBoldDark,
                                              ),
                                              kHeight3,
                                              Row(
                                                children: [
                                                  CustomeImageLoader(
                                                      imagePath:
                                                          'asset/image/lsicon_location-outline.png',
                                                      hight: 17,
                                                      width: 15),
                                                  Text(
                                                    '  6.04 KM',
                                                    style: AppText.txSmallDark,
                                                  )
                                                ],
                                              ),
                                              kHeight3,
                                              Row(
                                                children: [
                                                  CustomeImageLoader(
                                                      imagePath:
                                                          'asset/image/Group (2).png',
                                                      hight: 17,
                                                      width: 15),
                                                  Text(
                                                    '  Cafe & Restaurant',
                                                    style: AppText.txSmallDark,
                                                  )
                                                ],
                                              ),
                                              kHeight3,
                                              Row(
                                                children: [
                                                  CustomeImageLoader(
                                                      imagePath:
                                                          'asset/image/Group 62.png',
                                                      hight: 17,
                                                      width: 15),
                                                  Text(
                                                    '  Puthiyatheru, Kannur',
                                                    style: AppText.txSmallDark,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 5,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'asset/image/Vector.png'),
                                                        fit: BoxFit
                                                            .none, // Ensures the image scales while maintaining aspect ratio
                                                        scale: 2.3,
                                                      ),
                                                      color: AppColor.cardColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                )),
                                            Expanded(
                                                flex: 2, child: SizedBox()),
                                            Expanded(
                                                flex: 5,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'asset/image/Vector (2).png'),
                                                        fit: BoxFit.none,
                                                        scale: 2.3,
                                                      ),
                                                      color: AppColor.cardColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                ))
                                          ],
                                        )),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  kHeight15
                ],
              ),
            ),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (context, index) {
            //       return Column(
            //         children: [
            //           CustomeImageLoader(
            //               imagePath: 'asset/image/a.png',
            //               hight: 55.h,
            //               width: 40.w),
            //           kHeight3,
            //           Text(
            //             'Electronics & Appliance',
            //             style: AppText.tSmallDark,
            //           )
            //         ],
            //       );
            //     },
            //     childCount: 5,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
// return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomeImageLoader(
//                         imagePath: 'asset/image/logo-vendroo user 1.png',
//                         hight: 80.h,
//                         width: 80.w),
//                     Icon(
//                       Icons.notifications_active_outlined,
//                       size: 24.h,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.location_on_outlined,
//                       color: AppColor.grey,
//                     ),
//                     Text(
//                       'puthiyatheru, kannur',
//                       style: AppText.tSmallGrey,
//                     )
//                   ],
//                 ),
//                 kHeight,
//                 SearchTextfieldWidget(
//                   hintText: 'Search product, service or store name',
//                 ),
//                 kHeight,
//                 Text(
//                   'Advertisement',
//                   style: AppText.tMediumDark,
//                 ),
//                 kHeight,
//                 CarouselWidget(),
//                 kHeight,
//                 Text(
//                   'Category',
//                   style: AppText.tMediumDark,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
