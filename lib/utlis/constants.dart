import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hogr_machinetest/utlis/colors.dart';

TextStyle roboto(
    {double fontSize = 19,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kwhite}) {
  return GoogleFonts.roboto(
      fontSize: fontSize, fontWeight: fontWeight, color: color);
}


final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    side: const BorderSide(color: kblack), // Border color
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Circular radius
    ),
    minimumSize: const Size(150, 45));
