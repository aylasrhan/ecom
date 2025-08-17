import 'package:ecom_app/controller/auth/resetPW_controller.dart';
import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:ecom_app/core/function/validinput.dart';
import 'package:ecom_app/view/widget/auth/custombuttonauth.dart';
import 'package:ecom_app/view/widget/auth/customtextbodyAuth.dart';
import 'package:ecom_app/view/widget/auth/customtextformAUTH.dart';
import 'package:ecom_app/view/widget/auth/customtexttitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/utils.dart';

class ResetPW extends StatelessWidget {
  const ResetPW({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPWControllerImp controller =  Get.put(ResetPWControllerImp()) ;
     
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password",
        style: Theme.of(context).textTheme.displayLarge!.copyWith(color:AppColor.grey)),
        backgroundColor: AppColor.background,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
      child: ListView(
        children: [  
          
          CustomTextTitleAuth(text: "35".tr,),
        CustomTextBodyAuth(textbody:"35".tr),
           SizedBox(height:50),
          
       
        CustonTextFieldAuth(
          isNumber:false ,
          valid: (val){
              return validInput(val!, 3, 10, "password");
            },
          hinttext:"13".tr,
        iconData: Icons.email_outlined,
        labeltext:"19".tr,mycontroller: controller.password,),
         
        CustonTextFieldAuth(
          isNumber:false ,
          valid: (val){
              return validInput(val!, 3, 10, "repassword");
            },
          hinttext: "13".tr,
        iconData: Icons.email_outlined,
        labeltext:"19".tr ,mycontroller: controller.repassword,),
    
        SizedBox(height: 15,),
        CustomButtonAuth(onPressed: (){}, text: "35".tr)

 

       
       
        ],
    
      ),
      ),
    );
  }
}