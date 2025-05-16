import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/shared_prefs.dart';
import '../auth/login_screen.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      navigateToScreen();
    });
    super.initState();
  }

  navigateToScreen() {
    Prefs.isUserLoggedIn
        ? Get.offAll(() => const HomeScreen())
        : Get.offAll(() => const LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Image.asset(
          'asset/images/fmb_logo.png',
          height: 250.h,
          // width: 200.w,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
