import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text ContentText(
    {required Color colorContent,
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
