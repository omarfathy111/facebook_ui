// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:facebook_app/colors/colors_facebook.dart';

class TextFormFiled extends StatefulWidget {
   TextEditingController textController;
  bool isPasswordHidden;
   bool obscureText ;
    Widget? suffixIcon;
   String textValidator;
   String hintText;
   

   TextFormFiled({
    super.key,
     this.isPasswordHidden=false,
    required this.textController,
    this.obscureText= false,required this.textValidator
    ,required this.hintText,this.suffixIcon,
  });

  @override
  State<TextFormFiled> createState() => _TextFormFiledState();
}

class _TextFormFiledState extends State<TextFormFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,

      controller: widget.textController,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return widget.textValidator;
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon : widget.suffixIcon,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: ColorsFacebook.greyColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: ColorsFacebook.whitegrey,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
