import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarAndBell extends StatelessWidget {
  const AvatarAndBell({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.notifications_outlined,
          size: 25.sp,
        ),
        SizedBox(
          width: 15.w,
        ),
        CircleAvatar(
          radius: 18.r,
          backgroundImage: Image.asset("assets/images/profile-pic.webp").image,
        )
      ],
    );
  }
}
