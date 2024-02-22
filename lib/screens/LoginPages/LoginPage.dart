import 'package:coupon_app/components/CustomButton.dart';
import 'package:coupon_app/screens/LoginPages/OTPScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phoneNumberController = TextEditingController();

  late String _phoneNumber = "+911234567890";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Image.asset(
                "assets/images/login-image.png",
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Enter Your Mobile Number",
                style: TextStyle(
                    fontSize: 19.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "We will send you a Confirmation Code",
                style: TextStyle(fontSize: 14.sp),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w),
                child: IntlPhoneField(
                  controller: _phoneNumberController,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (value) {
                    setState(() {
                      _phoneNumber = value.completeNumber;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 120.h,
              ),
              CustomButton(
                  text: "Request OTP",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OTPScreen(
                            phoneNumber: _phoneNumber,
                          ),
                        ));
                  }),
              SizedBox(
                height: 60.h,
              ),
              const Text("By continuing you agree to Coupon App"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Terms Of Use",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(' & '),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
