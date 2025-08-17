import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const CustomButtonAuth({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 10),
    child: Container(
      margin: EdgeInsets.only(top: 10),
      
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(vertical: 10),
        onPressed: onPressed,color: AppColor.primarycolor,textColor: Colors.white,child: Text(text),)),
    );
  }
}