import 'package:ecom_app/core/constant/AppColor.dart';
import 'package:flutter/material.dart';

class CustomButtonLanguage extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;

  const CustomButtonLanguage({super.key, required this.textButton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            color: AppColor.primarycolor,
            child: MaterialButton(onPressed: onPressed,
            textColor: Colors.white,
            child: Text(textButton,style: TextStyle(fontWeight: FontWeight.bold),),),)
        ;
  }
}