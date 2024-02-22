import 'package:coupon_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(top: 7.h, bottom: 7.h),
        width: 310.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: purpleColor, borderRadius: BorderRadius.circular(7.r)),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}
