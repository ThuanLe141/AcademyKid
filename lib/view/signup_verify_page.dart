import 'package:academykid/common_widget/appbar_widget.dart';
import 'package:academykid/common_widget/button_widget.dart';
import 'package:academykid/common_widget/content_text.dart';
import 'package:academykid/common_widget/textfield_widget.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:academykid/view/signup_proc_page.dart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpVerify extends StatefulWidget {
  const SignUpVerify({super.key});

  @override
  State<SignUpVerify> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpVerify> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;

    return Scaffold(
        appBar: AppbarCommonWidget(onTapBackFunction: () {
          Get.back();
        }, onTapForwardFunction: () {
          Get.to(() => SignUpProc());
        }),
        body: Container(
          margin: EdgeInsets.only(top: maxheight * 0.04),
          width: maxWidth,
          height: maxheight,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/waitingmail_img.png',
                  width: maxWidth * 0.2,
                  height: maxWidth * 0.2,
                  fit: BoxFit.fill,
                ),
                ContentText(
                    colorContent: Color(0xFF0F3D57),
                    content:
                        "Please check your email and click 'Verify Email' button.\n Then, press the Next button here when you're done.",
                    sizeContent: 20,
                    weightContent: FontWeight.w700),
                ButtonCommonWidget(
                    onPressed: () {},
                    buttonContent: 'Resend Email',
                    widthButton: maxWidth * 0.2,
                    heightButton: maxheight * 0.03,
                    buttonColor: Color(0xFF0F3D57),
                    textColor: Colors.white)
              ]),
        ));
  }
}
