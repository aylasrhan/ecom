import 'package:flutter/material.dart';

class CustonTextFieldAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final bool? obscureText;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final void Function()? onTapIcon;
  const CustonTextFieldAuth({
    super.key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
     this.obscureText, this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: TextFormField(
        obscureText:obscureText==null|| obscureText== false?false :true,
        keyboardType:
            isNumber
                ? TextInputType.numberWithOptions(decimal: true)
                : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Text(labeltext, style: TextStyle(fontSize: 20)),
          ),
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 12),
          suffixIcon: InkWell(
            onTap:onTapIcon,
            child: Icon(iconData)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
