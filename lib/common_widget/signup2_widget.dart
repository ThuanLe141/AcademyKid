import 'package:academykid/common_widget/circle_avatar_widget.dart';
import 'package:academykid/common_widget/number_button_widget.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:flutter/material.dart';

class SignUpWidget2 extends StatefulWidget {
  const SignUpWidget2({super.key});

  @override
  State<SignUpWidget2> createState() => _SignUpWidget2State();
}

class _SignUpWidget2State extends State<SignUpWidget2> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TitleText(
            contentTitle: "What's Username age ?",
            sizeTitle: 22,
            weightTitle: FontWeight.w700),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NumberButtonWidget(onTapFunction: () {}, content: '2'),
            NumberButtonWidget(onTapFunction: () {}, content: '3'),
            NumberButtonWidget(onTapFunction: () {}, content: '4'),
            NumberButtonWidget(onTapFunction: () {}, content: '5'),
            NumberButtonWidget(onTapFunction: () {}, content: '6'),
            NumberButtonWidget(onTapFunction: () {}, content: '7+'),
          ],
        ),
        Image.asset(
          'assets/question_boy.png',
          width: maxheight * 0.5,
          height: maxheight * 0.42,
        )
      ],
    );
  }
}
