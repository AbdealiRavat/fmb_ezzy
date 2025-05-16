import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmb_ezzy/utils/app_config.dart';

import '../utils/colors.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool isPassword;
  final TextEditingController controller;
  final Function()? onTap;

  const CommonTextField({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.isPassword,
    required this.controller,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
            color: AppColors.primary.withValues(alpha: 0.5), width: 1),
      ),
      child: TextField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
              // contentPadding: EdgeInsets.all(22.r),
              suffixIcon: isPassword
                  ? SvgPicture.asset(
                      obscureText ? 'asset/svg/show.svg' : 'asset/svg/hide.svg',
                      semanticsLabel: 'image',
                      // fit: BoxFit.cover,
                      height: 12.w,
                      width: 12.w,
                    )
                  : const SizedBox(),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: commonTextStyle(
                  color: AppColors.secondaryTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500))),
    );
  }
}
