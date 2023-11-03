import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text ContentText(
    {Color colorContent = const Color(0xFF0F3D57),
    required String content,
    required double sizeContent,
    required FontWeight weightContent}) {
  return Text(
    content,
    textAlign: TextAlign.center,
    style: GoogleFonts.exo2(
      fontSize: sizeContent,
      fontWeight: weightContent,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.2,
      color: colorContent,
    ),
  );
}
