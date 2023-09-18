import 'package:flutter/material.dart';
import '../utils/colors.dart';

// ignore: camel_case_types
class CircularButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double? width;
  final double? height;
  final Color? bgcolor;
  final Color? txtcolor;
  final FontWeight? fontWeight;
  final double? textsize;
  final double? borderradius;

  const CircularButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.width,
      this.height,
      this.bgcolor,
      this.txtcolor,
      this.fontWeight,
      this.textsize,
      this.borderradius});

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;

    return Material(
      color: Colors.white.withOpacity(0.0),
      child: InkWell(
        splashColor: Colors.red,
        onTap: () {
          onTap;
        },
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 7,
                    spreadRadius: 5,
                    color: Colors.grey.withOpacity(0.5))
              ],
              borderRadius: BorderRadius.circular(borderradius ?? 12),
              color: bgcolor ?? Colors.blue),
          width: width ?? width1,
          height: height ?? height1 * 0.06,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: txtcolor,
                  fontWeight: fontWeight ?? FontWeight.normal,
                  fontSize: textsize),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class RoundRectangularButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double? width;
  final double? height;
  final Color? bgcolor;
  final Color? txtcolor;
  final FontWeight? fontWeight;
  final double? textsize;
  final double? borderradius;

  const RoundRectangularButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.width,
      this.height,
      this.bgcolor,
      this.txtcolor,
      this.fontWeight,
      this.textsize,
      this.borderradius});

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;

    return Material(
      color: transparentBlack,
      child: InkWell(
        splashColor: deepPurple,
        onTap: () {
          onTap;
        },
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 7,
                    spreadRadius: 5,
                    color: grey.withOpacity(0.5))
              ],
              borderRadius: BorderRadius.circular(borderradius ?? 4),
              color: bgcolor ?? purple),
          width: width ?? width1 * 0.4,
          height: height ?? height1 * 0.06,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: txtcolor ?? white,
                  fontWeight: fontWeight ?? FontWeight.w400,
                  fontSize: textsize ?? width1 * 0.038),
            ),
          ),
        ),
      ),
    );
  }
}
