import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  String title;

  CommonAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.r))),
      backgroundColor: Colors.transparent,
      leadingWidth: 35.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: GestureDetector(
          onTap: () => Scaffold.of(context).openDrawer(),
          child: Image.asset(
            'asset/images/menu.png',
            color: AppColors.secondary,
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.sp,
            letterSpacing: 1,
            color: AppColors.secondary),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
