import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../screens/home/controller/home_controller.dart';
import '../screens/home/home_screen.dart';
import '../utils/colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Drawer(
      backgroundColor: Colors.white,
      width: 0.75.sw,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  child: SvgPicture.asset(
                    'asset/svg/bg.svg',
                    semanticsLabel: 'bg Image',
                    width: 0.75.sw,
                    // fit: BoxFit.contain,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 0.22.sh,
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  // decoration: BoxDecoration(color: Colors.amber),
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    children: [
                      Text(
                        'Faizul Al Mawaid Al Burhaniyah ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                        ),
                      ),
                      Text(
                        'EZZY MOHALLAH',
                        style: TextStyle(
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView.builder(
                itemCount: homeController.drawerList.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.amberAccent.withOpacity(0.2),
                    splashFactory: InkRipple.splashFactory,
                    onTap: () {
                      // Get.currentRoute == ;
                      // homeController.isSelected[index] = true;
                      String title = homeController.drawerList[index].title;
                      if (index != 8) {
                      index == 0
                            ?
                      Get.offAll(() => HomeScreen(), arguments: [title]):
                      Get.offAll(() => HomeScreen(), arguments: [title]);
                      //       : index == 1
                      //           ?
                      // Get.offAll(() => HomeScreen(), arguments: [title])
                      //                               :
                      // Get.offAll(() => HomeScreen(), arguments: [title]);
                        Get.back();
                        // Get.offAll(() => HomeScreen(), arguments: [title]);
                        print(index);
                      } else {
                        Get.back();
                        homeController.logout();
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 15.h),
                      child: Row(
                        children: [
                          Image.asset(
                            homeController.drawerList[index].icon,
                            height: 20.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Obx(() => Text(
                                homeController.drawerList[index].title,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
