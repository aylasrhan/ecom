import 'package:ecom_app/controller/auth/forgetpassW_controller.dart';
import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:ecom_app/core/function/validinput.dart';
import 'package:ecom_app/view/widget/auth/custombuttonauth.dart';
import 'package:ecom_app/view/widget/auth/customtextbodyAuth.dart';
import 'package:ecom_app/view/widget/auth/customtextformAUTH.dart';
import 'package:ecom_app/view/widget/auth/customtexttitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/utils.dart';

class ForgetPW extends StatelessWidget {
  const ForgetPW({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPWControllerImp controller =  Get.put(ForgetPWControllerImp()) ;
     
    return Scaffold(
      appBar: AppBar(
        title: Text('14'.tr,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(color:AppColor.grey)),
        backgroundColor: AppColor.background,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
      child: ListView(
        children: [  
          
          CustomTextTitleAuth(text: "27".tr,),
        CustomTextBodyAuth(textbody: "29".tr,),
           SizedBox(height:50),
          
        CustonTextFieldAuth(
          isNumber:false ,
          valid: (val){
              return validInput(val!, 3, 20, "email");
            },
          hinttext: "12".tr,
        iconData: Icons.email_outlined,
        labeltext:"18".tr,mycontroller: controller.email,),
        SizedBox(height: 15,),
        CustomButtonAuth(onPressed: (){
          controller.gotoverifycode();
        }, text:"30".tr, )

 

       
       
        ],
    
      ),
      ),
    );
  }
}