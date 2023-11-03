import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

OutlinedButton OutlineButtonCommonWidget({
  required Function() onPressed,
  required String buttonContent,
  required double widthButton,
  required double heightButton,
  IconData iconButton = Icons.email,
  // Color textColor = Colors.black12,
  Color textColor = const Color(0xFF0F3D57),
  double textSize = 18,
  double iconSize = 23,
}) {
  return OutlinedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
        fixedSize: Size(widthButton, heightButton),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 5),
          child: Icon(
            iconButton,
            color: textColor,
            size: iconSize,
          ),
        ),
        Text(
          'Sign up with Email',
          style: GoogleFonts.signikaNegative(
              fontSize: textSize,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              letterSpacing: 0.2,
              color: textColor),
        ),
      ],
    ),
  );
}
