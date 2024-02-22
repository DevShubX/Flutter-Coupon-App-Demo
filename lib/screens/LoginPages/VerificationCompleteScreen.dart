import 'package:coupon_app/components/CustomButton.dart';
import 'package:coupon_app/screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationCompleteScreen extends StatefulWidget {
  const VerificationCompleteScreen({super.key});

  @override
  State<VerificationCompleteScreen> createState() =>
      _VerificationCompleteScreenState();
}

class _VerificationCompleteScreenState
    extends State<VerificationCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding:
              EdgeInsets.only(left: 50.w, right: 50.w, top: 20.h, bottom: 20.h),
          child: Image.asset("assets/images/verification-image.png"),
        ),
        Text(
          "Succesfully",
          style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: Text(
            "Your Account has been Created.",
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
        const Spacer(),
        CustomButton(
            text: "Continue",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ));
            }),
        SizedBox(
          height: 50.h,
        )
      ]),
    ));
  }
}
