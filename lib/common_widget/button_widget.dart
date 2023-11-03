import 'package:academykid/common_widget/content_text.dart';
import 'package:flutter/material.dart';

class ButtonCommonWidget extends StatefulWidget {
  final Function() onPressed;
  final String buttonContent;
  final double widthButton;
  final double heightButton;
  final Color buttonColor;
  final Color textColor;

  const ButtonCommonWidget(
      {super.key,
      required this.onPressed,
      required this.buttonContent,
      required this.widthButton,
      required this.heightButton,
      required this.buttonColor,
      required this.textColor});

  @override
  State<ButtonCommonWidget> createState() => _ButtonCommonWidgetState();
}

class _ButtonCommonWidgetState extends State<ButtonCommonWidget> {
  bool isPressButton = false;
  void toggleButtonColor() {
    setState(() {
      isPressButton = !isPressButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: widget.buttonColor,
            fixedSize: Size(widget.widthButton, widget.heightButton),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: ContentText(
            colorContent: widget.textColor,
            content: widget.buttonContent,
            sizeContent: 22,
            weightContent: FontWeight.w900));
  }
}
