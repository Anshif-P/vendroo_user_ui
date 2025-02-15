import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vednroo_ui/widget/custom_image.dart';

import '../widget/colors.dart';
import '../widget/screen_utils.dart';
import '../widget/search_textfield_widget.dart';
import '../widget/styles.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
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
                      'Offers Nearby',
                      style: AppText.tMediumDark,
                    ),
                    kHeight,
                  ],
                ),
              ),
            ),

            /// **Dynamic GridView inside SliverGrid**
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 9,
                            child: CustomeImageLoader(
                              imagePath:
                                  'asset/image/tomatoes-1296x728-feature.png',
                              hight: 500,
                              width: double.maxFinite,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Beef Burger',
                                  style: AppText.txSmallBoldDark,
                                ),
                                Row(
                                  children: [
                                    Text('MRP : ', style: AppText.txSmallDark),
                                    Text(
                                      '₹300',
                                      style: AppText.txSmallDark.copyWith(
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: AppColor.error,
                                      ),
                                    ),
                                  ],
                                ),
                                Text('Offer Price : ₹280 ',
                                    style: AppText.txSmallDark),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  childCount: 10, // Adjust item count dynamically
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  childAspectRatio: 0.7, // Adjust for better spacing
                  crossAxisSpacing: 0, // Spacing between columns
                  mainAxisSpacing: 0, // Spacing between rows
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
