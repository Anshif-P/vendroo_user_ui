import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vednroo_ui/widget/colors.dart';
import 'package:vednroo_ui/widget/styles.dart';
import '../widget/custom_image.dart';
import '../widget/screen_utils.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _obscureConfirmPassword = ValueNotifier<bool>(true);

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
                    'Join Vendroo Today!',
                    style: AppText.tH1Dark,
                  ),
                  kHeight20,
                  CustomTextField(
                    controller: _nameController,
                    label: 'Full Name',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                  ),
                  kHeight15,
                  CustomTextField(
                    controller: _phoneController,
                    label: ' Phone',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone';
                      }
                      return null;
                    },
                  ),
                  kHeight15,
                  CustomTextField(
                    controller: _emailController,
                    label: 'Email ',
                    secText: '(Optional)',
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
                    builder: (context, value, child) {
                      return CustomTextField(
                        controller: _passwordController,
                        label: 'Password',
                        obscureText: value,
                        suffixIcon: IconButton(
                          icon: Icon(
                              value ? Icons.visibility_off : Icons.visibility,
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
                  ValueListenableBuilder<bool>(
                    valueListenable: _obscureConfirmPassword,
                    builder: (context, value, child) {
                      return CustomTextField(
                        controller: _confirmPasswordController,
                        label: 'Confirm Password',
                        obscureText: value,
                        suffixIcon: IconButton(
                          icon: Icon(
                              value ? Icons.visibility_off : Icons.visibility,
                              color: AppColor.grey,
                              size: 18),
                          onPressed: () {
                            _obscureConfirmPassword.value =
                                !_obscureConfirmPassword.value;
                          },
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (value != _passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  kHeight15,
                  CustomElevatedButton(
                    text: 'Sign Up',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Perform sign-up action
                      }
                    },
                  ),
                  kHeight20,
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: SizedBox(
                      height: 40,
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: AppText.txSmallBoldDark,
                          children: [
                            TextSpan(
                              text: ' Log in',
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
