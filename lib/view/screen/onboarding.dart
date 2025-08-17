import 'package:ecom_app/controller/onboarding_controller.dart';
import 'package:ecom_app/view/widget/onboarding/custombutton.dart';
import 'package:ecom_app/view/widget/onboarding/customdot.dart';
import 'package:ecom_app/view/widget/onboarding/customslider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: CustomSliderOnboarding(),
            ),
            Expanded(child: Column(children: [
              //to generate dots
                     CustomDotOnboarding(),   
       Spacer(flex: 2 ),
              CustomButtonOnboarding(),

                        ],)),
             

          ],
        ),
      ),
    );
  }
}
