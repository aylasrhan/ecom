import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

abstract class SignUpController extends GetxController{
 SignUp();
  gotologin();
}
class SignUpControllerImp extends SignUpController{
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
   late TextEditingController username;
    late TextEditingController phone;
  

  @override
 SignUp() {
      if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoutesName.verifycodsignup);
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    email=TextEditingController();
    password =TextEditingController();
    username=  TextEditingController();
    phone=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
email.dispose();
password.dispose();
phone.dispose();
username.dispose();
    super.dispose();
  }
  
  @override
  gotologin() {
   Get.offNamed(AppRoutesName.login);
    throw UnimplementedError();
  }
  

}