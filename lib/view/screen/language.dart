import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:ecom_app/core/localization/changelocal.dart';
import 'package:ecom_app/view/widget/onboarding/language/custombuttonlangug.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("1".tr,style: Theme.of(context).textTheme.displayLarge,),
          SizedBox(height: 20,),
        CustomButtonLanguage(textButton: "AR",onPressed: (){
          controller.changelanguage("AR");
          Get.to(AppRoutesName.onboarding); 
        },),
         SizedBox(height: 15,),
        CustomButtonLanguage(textButton: "EN",onPressed: (){
            controller.changelanguage("EN");
            Get.to(AppRoutesName.onboarding);
        }),
        ],
      ),),
    );
  }
}

