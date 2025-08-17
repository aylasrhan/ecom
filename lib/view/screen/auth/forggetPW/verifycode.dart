import 'package:ecom_app/controller/auth/verifycode_controller.dart';
import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:ecom_app/view/widget/auth/customtextbodyAuth.dart';
import 'package:ecom_app/view/widget/auth/customtexttitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/utils.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller =  Get.put(VerifyCodeControllerImp()) ;
     
    return Scaffold(
      appBar: AppBar(
        title: Text("Verification Code",
        style: Theme.of(context).textTheme.displayLarge!.copyWith(color:AppColor.grey)),
        backgroundColor: AppColor.background,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
      child: ListView(
        children: [  
          
          CustomTextTitleAuth(text: "Check Code",),
        CustomTextBodyAuth(textbody:"please enter the digit code send to ayla@gmail.com",),
           SizedBox(height:50),
          
           OtpTextField(
            fieldWidth: 50,
            borderRadius: BorderRadius.circular(15),
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        showFieldAsBox: true, 
        onCodeChanged: (String code) {
        },
        onSubmit: (String verificationCode){
           controller.gotoresetPW();
        }, // end onSubmit
    ),
        SizedBox(height: 15,),

 

       
       
        ],
    
      ),
      ),
    );
  }
}