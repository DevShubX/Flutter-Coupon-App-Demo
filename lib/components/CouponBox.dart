import 'package:coupon_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CouponBox extends StatelessWidget {
  const CouponBox({
    super.key,
    required this.imageUrl,
    required this.companyName,
    required this.discount,
    required this.description,
    required this.deadLine,
  });
  final String imageUrl;
  final String companyName;
  final String discount;
  final String description;
  final String deadLine;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
                spreadRadius: 1.r,
                offset: const Offset(1, 1.5),
                color: const Color.fromARGB(10, 0, 0, 0),
                blurRadius: 5.r)
          ]),
      child: Row(
        children: [
          SizedBox(
            width: 10.w,
          ),
          Image.asset(
            imageUrl,
            width: 100.w,
            height: 100.h,
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                companyName,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "$discount off",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 12.sp, color: Colors.grey),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                deadLine,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600),
              )
            ],
          )
        ],
      ),
    );
  }
}
