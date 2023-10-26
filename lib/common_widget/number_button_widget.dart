import 'package:academykid/common_widget/content_text.dart';
import 'package:flutter/material.dart';

class NumberButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final String content;
  // final Color contentColor;
  final double contentSize;
  final FontWeight contentWeight;
  final Function() onTapFunction;
  final Color borderColor;
  final double borderWidth;
  final double avatarRadius;

  NumberButtonWidget({
    required this.onTapFunction,
    this.backgroundColor = Colors.white,
    required this.content,
    // required this.contentColor,
    this.contentSize = 22,
    this.contentWeight = FontWeight.w700,
    this.borderColor = Colors.black,
    this.borderWidth = 2.0,
    this.avatarRadius = 23,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: backgroundColor,
          radius: avatarRadius,
          child: CircleAvatar(
            backgroundColor: backgroundColor,
            radius: avatarRadius,
            child: ContentText(
              colorContent: Color(0xFF0F3D57),
              content: content,
              sizeContent: contentSize,
              weightContent: contentWeight,
            ),
          ),
        ),
      ),
    );
  }
}
