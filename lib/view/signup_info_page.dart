import 'package:academykid/common_widget/appbar_widget.dart';
import 'package:academykid/common_widget/content_text.dart';
import 'package:academykid/common_widget/number_button_widget.dart';
import 'package:academykid/common_widget/textfield_widget.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpInfo extends StatefulWidget {
  const SignUpInfo({super.key});

  @override
  State<SignUpInfo> createState() => _SignUpInfoState();
}

class _SignUpInfoState extends State<SignUpInfo> {
  Color backgroundColor = Colors.white;
  Color textColor = Color(0xFF0F3D57);
  bool isToggled = false;

  void toggleColor() {
    setState(() {
      isToggled = !isToggled;
      backgroundColor = isToggled ? Color(0xFF0F3D57) : Colors.white;
      textColor = isToggled ? Colors.white : Color(0xFF0F3D57);
    });
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppbarCommonWidget(
          onTapBackFunction: () {
            Get.snackbar(
                'Warning', 'Please complete the registration procedure');
          },
          onTapForwardFunction: () {}),
      body: Container(
        width: maxWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleText(
                contentTitle: "What's your name ?",
                sizeTitle: 18,
                weightTitle: FontWeight.w700),
            TextFieldWidget(
                hintContent: 'your name',
                heightTextField: maxheight * 0.1,
                widthTextField: maxWidth * 0.2),
            TitleText(
                contentTitle: "What's your age ?",
                sizeTitle: 18,
                weightTitle: FontWeight.w700),
            // NumberButtonWidget(
            //     content: '1',
            //     // contentSize: 30,
            //     onTapFunction: () {
            //       toggleColor();
            //     }),
            GestureDetector(
              onTap: () {
                toggleColor(); // Change the color when tapped
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFF0F3D57), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 24,
                  child: CircleAvatar(
                    backgroundColor: backgroundColor,
                    radius: 24,
                    child: ContentText(
                      colorContent: textColor,
                      content: '1',
                      sizeContent: 22,
                      weightContent: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            TitleText(
                contentTitle: "Select an Avatar",
                sizeTitle: 18,
                weightTitle: FontWeight.w700),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: maxWidth * 0.25,
                height: maxheight * 0.25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: backgroundColor,
                  border: Border.all(
                    color: Colors.red, // Set the border color
                    width: 3, // Set the border width
                  ),
                ),
                child: Center(
                  child: Image.asset('assets/avatars/avatar1.png',
                      width: maxWidth * 0.2, height: maxheight * 0.2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
