import 'package:ecom_app/controller/onboarding_controller.dart';
import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:ecom_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pagecontroller,
      onPageChanged: (val){
        controller.onpagechange(val);
      },
                itemCount: onboardingdata.length,
                itemBuilder:
                    (context, i) => Column(
                      children: [
                        Text(
                          onboardingdata[i].title!,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: AppColor.black),),
                        SizedBox(height: 30),
                        Image.asset(
                          onboardingdata[i].image!,
                          width: 175,
                          height: 220,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 40),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            onboardingdata[i].body!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 2,
                              fontWeight: FontWeight.bold,
                              color: AppColor.grey,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        
                      ],
                    ),
              );
  }
}