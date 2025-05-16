import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fmb_ezzy/components/common_app_button.dart';
import 'package:fmb_ezzy/components/common_text_field.dart';
import 'package:fmb_ezzy/utils/app_config.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import '../../utils/fade_animation.dart';
import 'controller/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController = Get.put(LoginController());
  TextEditingController itsController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: FadeInAnimation(
                  delay: 1.3,
                  child: Image.asset(
                    'asset/images/fmb_logo.png',
                    // height: 250.h,
                    // width: 380.w,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              commonAppText(
                  text: 'EZZY MOHALLAH',
                  color: AppColors.primaryTextColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
              SizedBox(height: 20.h),
              FadeInAnimation(
                delay: 1.9,
                child: CommonTextField(
                  controller: itsController,
                  hintText: 'Enter HOF ITS',
                  obscureText: false,
                  isPassword: false,
                ),
              ),
              SizedBox(height: 10.h),
              FadeInAnimation(
                delay: 2.2,
                child: Obx(() => CommonTextField(
                      controller: passwordController,
                      hintText: 'Enter your password',
                      obscureText: loginController.obscureText.value,
                      isPassword: true,
                      onTap: () {
                        loginController.obscureText.value =
                            !loginController.obscureText.value;
                      },
                    )),
              ),
              SizedBox(height: 10.h),
              FadeInAnimation(
                delay: 2.2,
                child: Obx(() => TextFormField(
                      controller: passwordController,
                      obscureText: loginController.flag.value,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(18.r),
                          hintText: "Enter your password",
                          hintStyle: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: 'Urbanist-Medium',
                              color: Color(0xFF8391A1)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(12.r)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.secondary, width: 2.w),
                              borderRadius: BorderRadius.circular(12.r)),
                          suffixIcon: IconButton(
                              onPressed: () {
                                loginController.flag.value =
                                    !loginController.flag.value;
                              },
                              icon: Icon(
                                Icons.remove_red_eye_outlined,
                                size: 20.w,
                              ))),
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              FadeInAnimation(
                delay: 2.8,
                child: CommonAppButton(
                  title: "Login",
                  onTap: () async {
                    if (itsController.text.isEmpty) {
                      // CommonToast.showDialog('Enter ITS number');
                    } else if (passwordController.text.isEmpty) {
                      // CommonToast.showDialog('Enter password');
                    } else {
                      // await loginController.login(
                      //     itsController.text, passwordController.text);
                      itsController.clear();
                      passwordController.clear();
                      // Get.to(() => HomeScreen());
                    }

                    // Get.to(() => HomeScreen());
                  },
                  isLoading: false,
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.all(12.w),
                child: GestureDetector(
                  onTap: () {
                    // loginController.openMail();
                  },
                  child: FadeInAnimation(
                    delay: 1.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Helpdesk : ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: "Urbanist-Bold",
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromARGB(255, 72, 151, 151),
                                color: Color.fromARGB(255, 72, 151, 151))),
                        Text(
                          'fmbsingapore@gmail.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: "Urbanist-Bold",
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  Color.fromARGB(255, 72, 151, 151),
                              color: Color.fromARGB(255, 72, 151, 151)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6.w),
                child: FadeInAnimation(
                  delay: 1.3,
                  child: Text(
                    'Powered by Saify Solutions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: "Urbanist-Bold",
                        fontWeight: FontWeight.w400,
                        color: AppColors.black),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6.w),
                child: FadeInAnimation(
                  delay: 1.3,
                  child: Text(
                    'v2.3.0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "Urbanist-Bold",
                        fontWeight: FontWeight.w300,
                        color: AppColors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
