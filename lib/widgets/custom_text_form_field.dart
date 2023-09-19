import 'package:flutter/material.dart';
import '../utils/colors.dart';

// ignore: must_be_immutable
class RectangularTextFormField extends StatelessWidget {
  final int? maxline;
  final double? height;
  final double? borderradius;
  final double? borderwidth;
  final double? focusborderwidth;
  final String? hint;
  final String? label;
  final bool showlabel;
  final bool? obscureText;
  final bool? filled;
  final Color? fillColor;
  final Color? hintcolor;
  final Color? labelcolor;
  final Color? inputcolor;
  final Color? bordercolor;
  final Color? focusbordercolor;
  final Color? cursorcolor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardtype;
  final TextInputAction? inputaction;
  void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validation;

  RectangularTextFormField({
    Key? key,
    this.maxline,
    this.height,
    this.borderradius,
    this.borderwidth,
    this.focusborderwidth,
    this.hint,
    this.label,
    required this.showlabel,
    this.obscureText,
    this.filled,
    this.fillColor,
    this.hintcolor,
    this.labelcolor,
    this.inputcolor,
    this.bordercolor,
    this.focusbordercolor,
    this.cursorcolor,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardtype,
    this.inputaction,
    this.onChanged,
    this.controller,
    this.validation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height1 = MediaQuery.of(context).size.height;
    return Container(
      height: height ?? height1 * 0.055,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        cursorColor: cursorcolor ?? black,
        maxLines: maxline,
        textInputAction: inputaction,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: inputcolor ?? black,
        ),
        autofocus: false,
        keyboardType: keyboardtype,
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: showlabel ? null : hint,
          label: showlabel
              ? Text(
                  label!,
                  style: TextStyle(
                    color: labelcolor,
                  ),
                )
              : null,
          hintStyle: TextStyle(color: hintcolor),
          filled: true,
          fillColor: white,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10, 20.0, 10),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: bordercolor ?? transparent, width: borderwidth ?? 1),
              borderRadius: BorderRadius.circular(borderradius ?? 5)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: focusbordercolor ?? primary,
              width: focusborderwidth ?? 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: red,
              width: focusborderwidth ?? 2,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: red,
              width: focusborderwidth ?? 2,
            ),
          ),
        ),
        validator: validation,
      ),
    );
  }
}
