import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:ecom_app/core/services/services.dart';
import 'package:ecom_app/data/datasource/static/static.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

abstract class OnBoardingController extends GetxController{
   next();
  // ignore: strict_top_level_inference
  onpagechange(int index);
}
class OnBoardingControllerImp extends OnBoardingController {
  int currentpage=0;
 late PageController pagecontroller;
 MyServices mySrvices = Get.find();
  @override
  next() {
    currentpage++;
    if ( currentpage>onboardingdata.length-1) {
      mySrvices.sharpref.setString("onboarding", "1");
    Get.offAllNamed(AppRoutesName.login);



   }
   else{
    pagecontroller.animateToPage(currentpage, duration: Duration(milliseconds: 900), curve: Curves.easeInOut);

   }
  }

  @override
  onpagechange(int index) {
   currentpage=index;
   update(); 
  }
  @override
  void onInit() {
    pagecontroller =PageController();
    super.onInit();
  }
}