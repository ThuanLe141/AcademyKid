import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text ContentText(
    {required Color colorContent,
    required String content,
    required double sizeContent,
    required FontWeight weightContent}) {
  return Text(
    content,
    style: GoogleFonts.exo2(
        // textStyle: Theme.of(context).textTheme.displayLarge,
        fontSize: sizeContent,
        fontWeight: weightContent,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.2,
        color: colorContent),
  );
}
