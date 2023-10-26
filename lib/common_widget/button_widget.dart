import 'package:academykid/common_widget/content_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

// ElevatedButton ButtonCommonWidget({
//   required Function() onPressed,
//   required String buttonContent,
//   required double widthButton,
//   required double heightButton,
//   required Color buttonColor,
//   required Color textColor,
// }) {
//   return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//           backgroundColor: buttonColor,
//           fixedSize: Size(widthButton, heightButton),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
//       child: ContentText(
//           colorContent: textColor,
//           content: buttonContent,
//           sizeContent: 22,
//           weightContent: FontWeight.w900));
// }
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
