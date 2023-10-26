import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text TitleText(
    {Color colorTitle = const Color(0xFF0F3D57),
    required String contentTitle,
    required double sizeTitle,
    required FontWeight weightTitle}) {
  return Text(
    contentTitle,
    style: GoogleFonts.signikaNegative(
        // textStyle: Theme.of(context).textTheme.displayLarge,
        fontSize: sizeTitle,
        fontWeight: weightTitle,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.2,
        color: colorTitle),
  );
}
//Color(0xFF0F3D57)