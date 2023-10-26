import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox TextFieldWidget({
  required String hintContent,
  required double heightTextField,
  required double widthTextField,
  bool obscure = false,
}) {
  return SizedBox(
    height: heightTextField,
    width: widthTextField,
    child: TextField(
      obscureText: obscure,
      decoration: new InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Color(0xFF0F3D57), width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Color(0xFF0F3D57), width: 2.0),
        ),
        hintText: hintContent,
        hintStyle: GoogleFonts.signikaNegative(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            letterSpacing: 0.2,
            color: Colors.black54),
      ),
    ),
  );
}
