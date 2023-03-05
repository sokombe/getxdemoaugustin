import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainButton extends StatelessWidget {
  MainButton({
    required this.bgcolor,
    required this.borderradius,
    required this.height,
    required this.ontap,
    required this.text,
    required this.textcolor,
    required this.width,
    required this.fontWeight,
    required this.textSize
  });
  final double borderradius;
  final Color bgcolor;
  final Color textcolor;
  final String text;
  final Function() ontap;
  final double height;
  final double width;
  final FontWeight fontWeight;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ontap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(fontWeight: fontWeight,fontSize: textSize,color: textcolor),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderradius),
          color: bgcolor,
        ),
      ),
    );
  }
}
