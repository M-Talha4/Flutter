import 'package:flutter/material.dart';

// ignore: camel_case_types
class cText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final Color? color;
  final double? width;
  final TextAlign? textAlign;
  const cText(
      {super.key,
      required this.text,
      this.width,
      this.fontWeight,
      this.color,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;

    return Text(
      textAlign: textAlign ?? TextAlign.start,
      text,
      style: TextStyle(
          fontSize: width ?? width1 * 0.04,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Colors.black),
    );
  }
}
