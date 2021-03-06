import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:qwikio_user/const/app_colors.dart';
import 'package:qwikio_user/ui/route/route.dart';
import 'package:qwikio_user/ui/styles/styles.dart';
import 'package:qwikio_user/ui/widgets/app_buttons.dart';
import 'package:qwikio_user/ui/widgets/app_text.dart';

class PlaceCheckout extends StatefulWidget {
  const PlaceCheckout({Key? key}) : super(key: key);

  @override
  _PlaceCheckoutState createState() => _PlaceCheckoutState();
}

class _PlaceCheckoutState extends State<PlaceCheckout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightcolor,
      appBar: leadingTitleAppBar("My Booking and orders"),
      body: Container(
        color: AppColors.light_background_color,
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              Container(
                height: 250.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lightcolor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.w),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(25.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120.h,
                            width: 100.w,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.w),
                                child: Image.asset(
                                  "assets/images/staythree.png",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              authDetailsText("Double 2 double beds"),
                              SizedBox(
                                height: 5.h,
                              ),
                              dialogNormalText("2 day including Breakfast",
                                  AppColors.spanish_grey_color),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  mediumBlackText(
                                      "\$ 23", AppColors.majorelle_blue_color),
                                  SizedBox(
                                    width: 100.h,
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.majorelle_blue_color
                                            .withOpacity(0.1),
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12.w,
                                      color: AppColors.majorelle_blue_color,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      majorelleBlueButton("Cancel", ()=> Get.toNamed(bookingCancellation))
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                color: AppColors.light_background_color,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
