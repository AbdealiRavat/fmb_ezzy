import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmb_ezzy/utils/colors.dart';
import 'package:get/get.dart';

import '../../components/app_drawer.dart';
import '../../components/common_app_bar.dart';
import 'controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: CommonAppbar(title: homeController.screenTitle.value),
        drawer: AppDrawer(),
        body: Stack(
          children: [
            SvgPicture.asset(
              'asset/svg/bg.svg',
              semanticsLabel: 'bg Image',
              fit: BoxFit.cover,
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  Container(
                    height: 120.h,
                    child: CarouselView(
                        itemExtent: MediaQuery.sizeOf(context).width,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        itemSnapping: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        children: List.generate(
                          5,
                          (index) {
                            return Container(
                                color: AppColors.borderColor,
                                child: Text('fuyfgasuyfasfvasy'));
                          },
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
