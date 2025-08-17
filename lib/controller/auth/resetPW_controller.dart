import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

abstract class ResetPWController extends GetxController{
 resetPW();
  gotosuccessresetpw();
}
class ResetPWControllerImp extends ResetPWController{
  late TextEditingController password;
   late TextEditingController repassword;

  

  @override
 resetPW() {
   
  }

  @override
  void onInit() {
    password=TextEditingController();
     repassword=TextEditingController();
  
    super.onInit();
  }
  @override
  void dispose() {
password.dispose();
repassword.dispose();
    super.dispose();
  }
  
  @override
  gotosuccessresetpw() {
   Get.offNamed(AppRoutesName.verifycod);
  }
  

}