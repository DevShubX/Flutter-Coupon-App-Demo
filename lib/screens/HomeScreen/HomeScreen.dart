import 'package:coupon_app/components/AvatarAndBell.dart';
import 'package:coupon_app/components/CategoriesTile.dart';
import 'package:coupon_app/components/CouponBox.dart';
import 'package:coupon_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Coup",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 92, 92, 92),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "ons",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 25, 59, 255),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  const AvatarAndBell(),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color.fromARGB(28, 177, 177, 177),
                    ),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          constraints: BoxConstraints.tightFor(width: 250.w),
                          border: InputBorder.none,
                          hintText: "Type to search..",
                          hintStyle:
                              TextStyle(fontSize: 15.sp, color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 28.sp,
                          )),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color.fromARGB(28, 177, 177, 177),
                    ),
                    child: Icon(
                      Icons.settings_input_component,
                      size: 30.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Categories",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color.fromARGB(255, 122, 122, 122)),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 35.h,
                child: ListView(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoriesTile(
                      icon: Icons.window_outlined,
                      text: "All",
                      isActive: true,
                      onPressed: () {},
                    ),
                    CategoriesTile(
                      icon: Icons.accessibility,
                      text: "Fashion",
                      isActive: false,
                      onPressed: () {},
                    ),
                    CategoriesTile(
                      icon: Icons.tv,
                      text: "Electronics",
                      isActive: false,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              const CouponBox(
                  imageUrl: "assets/images/adidas-logo.webp",
                  companyName: "Adidas",
                  discount: "15%",
                  description: "on purchase of \$199 or more",
                  deadLine: "till Nov 8"),
              const CouponBox(
                  imageUrl: "assets/images/iherb-logo.png",
                  companyName: "iHerb",
                  discount: "20%",
                  description: "on purchase of \$199 or more",
                  deadLine: "till Oct 11"),
              const CouponBox(
                  imageUrl: "assets/images/puma-logo.jpg",
                  companyName: "Puma",
                  discount: "15%",
                  description: "on purchase of \$199 or more",
                  deadLine: "till Nov 8"),
              const CouponBox(
                  imageUrl: "assets/images/mcdonalds-logo.png",
                  companyName: "MC Donalds",
                  discount: "20%",
                  description: "on purchase of \$199 or more",
                  deadLine: "till Nov 30")
            ],
          ),
        ),
      ),
    ));
  }
}
