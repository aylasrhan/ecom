import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

abstract class LoginController extends GetxController{
  login();
  gotosignup();
  gotoforgetPW();
}
class LoginControllerImp extends LoginController{
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formstate =GlobalKey<FormState>();
  bool isPasObsecure =true;
  @override
  gotosignup() {
   Get.toNamed(AppRoutesName.signup);
  }
    void showPassWord(){
       isPasObsecure= isPasObsecure == false?true:false;
       update();
    }

  @override
  login() {
   var formdata =formstate.currentState;
   if(formdata!.validate()){
    print("Valid");
   }else {
     print("Not Valid");
   }
  }

  @override
  void onInit() {
    email=TextEditingController();
    password =TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
email.dispose();
password.dispose();
    super.dispose();
  }
  
  @override
  gotoforgetPW() {
    Get.offNamed(AppRoutesName.forgetPW);
    throw UnimplementedError();
  }
}