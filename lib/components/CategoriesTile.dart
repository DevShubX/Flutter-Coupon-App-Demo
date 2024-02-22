import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesTile extends StatelessWidget {
  const CategoriesTile({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
    required this.isActive,
  });
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(right: 20.w),
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 7.w),
        decoration: BoxDecoration(
            color: isActive ? Colors.grey : Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
                color: const Color.fromARGB(69, 80, 80, 80), width: 2.w)),
        child: Row(
          children: [
            Icon(
              icon,
              color: isActive ? Colors.white : Colors.grey,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w900,
                  color: isActive ? Colors.white : Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
