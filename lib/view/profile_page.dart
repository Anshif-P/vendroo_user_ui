import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vednroo_ui/widget/colors.dart';
import 'package:vednroo_ui/widget/custom_image.dart';
import 'package:vednroo_ui/widget/screen_utils.dart';
import 'package:vednroo_ui/widget/styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kHeight15,
              CustomeImageLoader(
                imagePath: 'asset/image/Ellipse 5.png',
                hight: 104.h,
                width: 80.w,
                shape: BoxShape.circle,
                boxFit: BoxFit.fitHeight,
              ),
              kHeight3,
              Text('Sayyid Hyder', style: AppText.tMediumDark),
              kHeight3,
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(5),
                  backgroundColor:
                      WidgetStateProperty.all(AppColor.primaryColor),
                ),
                child: Text('Edit Profile', style: AppText.smallDark),
              ),
              kHeight,
              _buildSection(
                children: [
                  _buildListTile(
                    'asset/image/headphone 1.png',
                    'Contact Us',
                  ),
                  _buildListTile(
                    'asset/image/Vector temp.png',
                    'About Us',
                  ),
                ],
              ),
              kHeight15,
              _buildSection(
                children: [
                  _buildListTile(
                    'asset/image/Group 32.png',
                    'Push Notification',
                    trailing: Switch(
                      activeColor: AppColor.white,
                      activeTrackColor: AppColor.green,
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  _buildListTile(
                    'asset/image/terms-and-conditions (1) 1.png',
                    'Terms & Conditions',
                  ),
                  _buildListTile(
                    'asset/image/insurance 1.png',
                    'Privacy Policy',
                  ),
                  _buildListTile(
                    'asset/image/delete 2 (1).png',
                    'Delete Account',
                    textStyle: AppText.tSmallRed,
                  ),
                ],
              ),
              kHeight,
              Text('Follow Us', style: AppText.tMediumDark),
              kHeight5,
              _buildSocialIcons(),
              kHeight20,
              _buildLogoutButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection({required List<Widget> children}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColor.lightGreyColor,
        border: Border.all(color: AppColor.borderColor),
      ),
      child: Column(
        children:
            children.expand((widget) => [widget, _buildDivider()]).toList()
              ..removeLast(),
      ),
    );
  }
  Widget _buildListTile(String imagePath, String title,
      {TextStyle? textStyle, Widget? trailing}) {
    return ListTile(
      leading: _buildIconContainer(imagePath),
      title: Text(title, style: textStyle ?? AppText.tSmallDark),
      trailing: trailing,
    );
  }
  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomeImageLoader(
          imagePath: 'asset/image/skill-icons_instagram.png',
          hight: 20.h,
          width: 20.w,
          boxFit: BoxFit.fitHeight,
        ),
        CustomeImageLoader(
          imagePath: 'asset/image/facebook 1.png',
          hight: 20.h,
          width: 20.w,
          boxFit: BoxFit.fitHeight,
        ),
      ],
    );
  }
  Widget _buildLogoutButton() {
    return Row(
      children: [
        Expanded(flex: 2, child: SizedBox()),
        Expanded(
          flex: 5,
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.primaryColor,
              ),
              child: Text('LogOut', style: AppText.tMediumDark),
            ),
          ),
        ),
        Expanded(flex: 2, child: SizedBox()),
      ],
    );
  }
  Widget _buildIconContainer(String imagePath) {
    return Container(
      height: 24.h,
      width: 24.h,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: CustomeImageLoader(
          imagePath: imagePath,
          hight: 20,
          width: 20,
          boxFit: BoxFit.fitHeight,
        ),
      ),
    );
  }
  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Divider(color: AppColor.borderColor),
    );
  }
}

