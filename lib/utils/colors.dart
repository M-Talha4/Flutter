import 'package:flutter/material.dart';

// Material Design Color Palette
const Color red = Color(0xFFFF0000);
const Color pink = Color(0xFFFF4081);
const Color purple = Color(0xFF9C27B0);
const Color deepPurple = Color(0xFF673AB7);
const Color indigo = Color(0xFF3F51B5);
const Color blue = Color(0xFF2196F3);
const Color lightBlue = Color(0xFF03A9F4);
const Color cyan = Color(0xFF00BCD4);
const Color teal = Color(0xFF009688);
const Color green = Color(0xFF4CAF50);
const Color lightGreen = Color(0xFF8BC34A);
const Color lime = Color(0xFFCDDC39);
const Color yellow = Color(0xFFFFEB3B);
const Color amber = Color(0xFFFFC107);
const Color orange = Color(0xFFFF9800);
const Color deepOrange = Color(0xFFFF5722);
const Color brown = Color(0xFF795548);
const Color grey = Color(0xFF9E9E9E);
const Color blueGrey = Color(0xFF607D8B);

MaterialColor primarySwatch = MaterialColor(
  primary.value,
  <int, Color>{
    50: primary.withOpacity(0.1),
    100: primary.withOpacity(0.2),
    200: primary.withOpacity(0.3),
    300: primary.withOpacity(0.4),
    400: primary.withOpacity(0.5),
    500: primary.withOpacity(0.6),
    600: primary.withOpacity(0.7),
    700: primary.withOpacity(0.8),
    800: primary.withOpacity(0.9),
    900: primary.withOpacity(1.0),
  },
);

// Common Colors
const Color black = Color(0xFF000000);
const Color white = Color(0xFFFFFFFF);
const Color transparentWhite =
    Color(0x99FFFFFF); // White with transparency (60%)
const Color transparentBlack =
    Color(0x60000000); // Black with transparency (38%)

// Custom Colors (you can add more as needed)
const Color primary = Color(0xffEE3423);
const Color cardblueColor = Color(0xff45AFE0);
const Color cardredColor = Color(0xffC76BE5);
const Color cardyellowColor = Color(0xffF6A052);
const Color fillcolor = Color(0xffF8FAFC);
Color grey1 = grey.withOpacity(0.3);
// Custom primary color
const Color accentColor = Color(0xFF00FF00); // Custom accent color

// comstom FontWeight
FontWeight normal = FontWeight.normal;
FontWeight bold = FontWeight.bold;
FontWeight bold8 = FontWeight.w800;
FontWeight bold5 = FontWeight.w500;
