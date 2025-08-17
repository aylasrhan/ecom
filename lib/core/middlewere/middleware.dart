import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:ecom_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware{
  MyServices myServices=Get.find();
  @override
 int get Priority =>1;
   @override
   RouteSettings redirect(String? route){
  if(myServices.sharpref.getString("onboarding")==1) {}
  return RouteSettings(name: AppRoutesName.login);
   }
  
}