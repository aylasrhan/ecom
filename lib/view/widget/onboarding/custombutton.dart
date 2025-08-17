import 'package:ecom_app/controller/onboarding_controller.dart';
import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class CustomButtonOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: EdgeInsets.only(bottom: 100),
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  onPressed: (){
                    controller.next();
                  },textColor: Colors.white,
                color: AppColor.primarycolor,
                child: Text("Continu",),),
              );
  }
}