import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vednroo_ui/view/sign_up_page.dart';
import 'package:vednroo_ui/widget/colors.dart';
import 'package:vednroo_ui/widget/styles.dart';
import '../widget/custom_image.dart';
import '../widget/screen_utils.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomeImageLoader(
                    boxFit: BoxFit.fitWidth,
                    imagePath: 'asset/image/logo-vendroo user 1.png',
                    hight: 30.h,
                    width: 90.w,
                  ),
                  kHeight20,
                  Text(
                    'Find Nearby Shops, Offers & Services Instantly!',
                    style: AppText.tH1Dark,
                  ),
                  kHeight20,
                  CustomTextField(
                    controller: _emailController,
                    label: 'Email Or Phone',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email or phone';
                      }
                      return null;
                    },
                  ),
                  kHeight15,
                  ValueListenableBuilder<bool>(
                    valueListenable: _obscurePassword,
                    builder: (context, obscureText, child) {
                      return CustomTextField(
                        controller: _passwordController,
                        label: 'Password',
                        obscureText: obscureText,
                        suffixIcon: IconButton(
                          icon: Icon(
                              obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: AppColor.grey,
                              size: 18),
                          onPressed: () {
                            _obscurePassword.value = !_obscurePassword.value;
                          },
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  kHeight15,
                  CustomElevatedButton(
                    text: 'Log In',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Perform login action
                      }
                    },
                  ),
                  kHeight15,
                  InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    )),
                    child: SizedBox(
                      height: 40,
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account?  ",
                          style: AppText.txSmallBoldDark,
                          children: [
                            TextSpan(
                              text: 'Register',
                              style: AppText.txSmallBoldDark
                                  .copyWith(color: AppColor.customBlue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool obscureText;
  final Widget? suffixIcon;
  String secText;
  final String? Function(String?)? validator;

  CustomTextField({
    super.key,
    this.secText = '',
    required this.controller,
    required this.label,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: AppText.txSmallBoldDark,
            ),
            secText == '(Optional)'
                ? Text(secText,
                    style: AppText.txSmallBoldDark.copyWith(
                      color: AppColor.grey,
                    ))
                : SizedBox()
          ],
        ),
        kHeight3,
        Container(
          decoration: BoxDecoration(
            color: AppColor.lightGreyColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: suffixIcon,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            ),
            validator: validator,
          ),
        ),
      ],
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(5),
          backgroundColor: WidgetStateProperty.all(AppColor.primaryColor),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppText.tSmallDark,
        ),
      ),
    );
  }
}
