import 'package:ecom_app/controller/auth/login_controller.dart';
import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:ecom_app/core/function/alertexitapp.dart';
import 'package:ecom_app/core/function/validinput.dart';
import 'package:ecom_app/view/widget/auth/custombuttonauth.dart';
import 'package:ecom_app/view/widget/auth/customtextbodyAuth.dart';
import 'package:ecom_app/view/widget/auth/customtextformAUTH.dart';
import 'package:ecom_app/view/widget/auth/customtextsignup.dart';
import 'package:ecom_app/view/widget/auth/customtexttitleAuth.dart';
import 'package:ecom_app/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {

     LoginControllerImp controller =Get.put (LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In",
        style: Theme.of(context).textTheme.displayLarge!.copyWith(color:AppColor.grey)),
        backgroundColor: AppColor.background,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop:alertExitApp,
        child: Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [  
              LogoAuth(),
              CustomTextTitleAuth(text: "10".tr,),
            CustomTextBodyAuth(textbody:"11".tr,),
               SizedBox(height:50),
            CustonTextFieldAuth(
              
              isNumber:false ,
              valid: (val){
                  return validInput(val!, 3, 20, "email");
                },
              hinttext: "12".tr,
            iconData: Icons.email_outlined,
            labeltext:"18".tr ,mycontroller: controller.email,),
          GetBuilder<LoginControllerImp>(builder: (controller)=>  CustonTextFieldAuth(
              obscureText: controller.isPasObsecure,
              onTapIcon: (){
                controller.showPassWord();
              },
              isNumber:false ,
              valid: (val){
                  return validInput(val!, 3, 10, "password");
                },
              hinttext: "13".tr,
            iconData: Icons.visibility,
            labeltext:"19".tr ,mycontroller: controller.password),),
            InkWell(
              onTap: (){
                controller.gotoforgetPW();
              },
              child: Text("14".tr,textAlign: TextAlign.end,)),
            CustomButtonAuth(text: "15".tr,onPressed: (){
              controller.login();
            },),
           CustomTextSignUporSignIn(textone: "16".tr,texttwo: "17".tr,onTap: (){
            controller.gotosignup();
           },),
           
            ],
              
          ),
        ),
        ),
      ),
    );
  }
}