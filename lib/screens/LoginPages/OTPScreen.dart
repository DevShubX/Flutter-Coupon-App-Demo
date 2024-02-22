import 'package:coupon_app/components/CustomButton.dart';
import 'package:coupon_app/constants/colors.dart';
import 'package:coupon_app/screens/LoginPages/VerificationCompleteScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController _otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    getOTP();
    super.initState();
  }

  void getOTP() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: widget.phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const VerificationCompleteScreen())),
            });
      },
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) async {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 70.w, right: 70.w, top: 50.h, bottom: 30.h),
              child: Image.asset(
                "assets/images/otp-image.png",
              ),
            ),
            Text(
              "Enter Verification code",
              style: TextStyle(
                  fontSize: 19.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Text(
                "Please enter the verification code sent to your mobile number.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color.fromARGB(255, 82, 82, 82)),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              widget.phoneNumber,
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
              child: PinCodeTextField(
                obscureText: false,
                length: 6,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  selectedColor: purpleColor,
                  selectedFillColor: Colors.white,
                  inactiveColor: const Color.fromARGB(52, 0, 0, 0),
                  inactiveFillColor: Colors.white,
                  activeFillColor: Colors.white,
                  activeColor: const Color.fromARGB(52, 0, 0, 0),
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5.r),
                  fieldHeight: 45.h,
                  fieldWidth: 45.w,
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                controller: _otpController,
                onChanged: (value) {},
                beforeTextPaste: (text) {
                  return true;
                },
                appContext: context,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't receive the OTP? "),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "RESEND OTP",
                    style: TextStyle(color: purpleColor),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
            CustomButton(
                text: "Submit",
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) =>
                  //           const VerificationCompleteScreen(),
                  //     ));
                  getOTP();
                })
          ],
        ),
      ),
    ));
  }
}
