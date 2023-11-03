import 'package:flutter/material.dart';

class OutlinedTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final Color outlineColor;
  final double strokeWidth;

  OutlinedTextWidget({
    required this.text,
    required this.fontSize,
    required this.textColor,
    required this.outlineColor,
    required this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = outlineColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
