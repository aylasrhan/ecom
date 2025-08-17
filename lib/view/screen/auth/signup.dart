import 'package:ecom_app/controller/auth/signup_controller.dart';
import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:ecom_app/core/function/alertexitapp.dart';
import 'package:ecom_app/core/function/validinput.dart';
import 'package:ecom_app/view/widget/auth/custombuttonauth.dart';
import 'package:ecom_app/view/widget/auth/customtextbodyAuth.dart';
import 'package:ecom_app/view/widget/auth/customtextformAUTH.dart';
import 'package:ecom_app/view/widget/auth/customtextsignup.dart';
import 'package:ecom_app/view/widget/auth/customtexttitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/utils.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
   
     
    return Scaffold(
      appBar: AppBar(
        title: Text("17".tr,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(color:AppColor.grey)),
        backgroundColor: AppColor.background,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop:alertExitApp,
        child: GetBuilder<SignUpControllerImp>(builder: (controller)=>Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: ListView(
          children: [  
            
            CustomTextTitleAuth(text: "10".tr,),
          CustomTextBodyAuth(textbody:"24".tr,),
             SizedBox(height:50),
             CustonTextFieldAuth(
              isNumber:false ,
              valid: (val){
                return validInput(val!, 3, 10, "username");
              },
              hinttext: "23".tr,
          iconData: Icons.person_outline,
          labeltext:"20".tr ,mycontroller: controller.username,),
             
          CustonTextFieldAuth(
            isNumber:false ,
            valid: (val){
                return validInput(val!,5, 30, "email");
              },
            hinttext: "12".tr,
          iconData: Icons.email_outlined,
          labeltext:"18".tr,mycontroller: controller.email,),
          CustonTextFieldAuth(
            isNumber:true,
            valid: (val){
                return validInput(val!, 3, 10, "phone");
              },
            hinttext: "22".tr,
          iconData: Icons.call,
          labeltext:"21".tr ,mycontroller: controller.phone,),
             
          CustonTextFieldAuth(
            isNumber:false ,
            valid: (val){
                return validInput(val!, 3, 10, "username");
              },
            hinttext: "13".tr,
          iconData: Icons.lock_outlined,
          labeltext:"19".tr ,mycontroller: controller.password,),
          CustomButtonAuth(text: "17".tr,onPressed: (){},),
        
        
         CustomTextSignUporSignIn(textone: "25".tr,texttwo: "26".tr,onTap: (){
          controller.gotologin();
         },),
        
         
         
          ],
            
        ),
        ),),
      )
    );
  }
}