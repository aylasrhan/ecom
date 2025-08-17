import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

abstract class ForgetPWController extends GetxController{
 checkemail();
  gotoverifycode();
}
class ForgetPWControllerImp extends ForgetPWController{
  late TextEditingController email;

  

  @override
 checkemail() {
   
  }

  @override
  void onInit() {
    email=TextEditingController();
  
    super.onInit();
  }
  @override
  void dispose() {
email.dispose();
    super.dispose();
  }
  
  @override
  gotoverifycode() {
   Get.offNamed(AppRoutesName.verifycod);
  }
  

}