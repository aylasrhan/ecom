import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:flutter/material.dart';

class CustomTextSignUporSignIn extends StatelessWidget {
  final String textone;
  final String  texttwo;
  final void Function() onTap;

  const CustomTextSignUporSignIn({super.key, required this.textone, required this.texttwo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(textone),
          InkWell(
            onTap:onTap ,
            child: Text(texttwo,style: TextStyle(color: AppColor.primarycolor,fontWeight: FontWeight.bold),),),
        ],);
  }
}