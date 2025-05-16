import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fmb_ezzy/utils/app_config.dart';
import 'package:fmb_ezzy/utils/colors.dart';

class CommonAppButton extends StatelessWidget {
  String title;
  bool isLoading;
  Function()? onTap;

  CommonAppButton(
      {super.key,
      required this.title,
      required this.isLoading,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
          height: 50.h,
          width: 1.sw,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(
                10.r,
              )),
          child: commonAppText(
              text: 'LOGIN',
              color: AppColors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500)),
    );
  }
}
