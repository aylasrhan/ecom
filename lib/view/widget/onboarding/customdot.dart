import 'package:ecom_app/controller/onboarding_controller.dart';
import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:ecom_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CustomDotOnboarding extends StatelessWidget {
  const CustomDotOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller)=>Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [  ...List.generate(onboardingdata.length,
                           (index)=>AnimatedContainer(
                            margin: EdgeInsets.only(right: 20),
                            duration:Duration(milliseconds: 900) ,
                            width: controller.currentpage ==index?20:6,
                            height: 6,
                           decoration: BoxDecoration(
                            color:controller.currentpage==index? AppColor.primarycolor:AppColor.primarycolor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                           ),
                           )),],));
  }
}