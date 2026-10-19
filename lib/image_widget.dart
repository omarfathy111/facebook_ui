// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  
  String imageText ;
  double? height;
  double? width;
  double? top;
  double? left;

  ImageWidget({
    super.key,
    required this.imageText, this.height, this.width, this.left, this.top
  });
  @override
  Widget build(BuildContext context) {
   return Padding(
            padding: EdgeInsets.only(top: top ?? 0, left: left ?? 0),
            child: Image.asset(
              'assets/images/$imageText',
              height: height ?? 0,
              width: width ?? 0,
            ),
          );
  }
  
}
