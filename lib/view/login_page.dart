import 'package:academykid/common_widget/appbar_widget.dart';
import 'package:academykid/common_widget/content_text.dart';
import 'package:academykid/common_widget/textfield_widget.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _SignUpState();
}

class _SignUpState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;

    return Scaffold(
        appBar: AppbarCommonWidget(
            onTapBackFunction: () {
              Get.back();
            },
            onTapForwardFunction: () {}),
        body: Container(
          margin: EdgeInsets.only(top: maxheight * 0.06),
          width: maxWidth,
          height: maxheight,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          'assets/img2.png',
                          height: maxheight * 0.32,
                          width: maxWidth * 0.25,
                          fit: BoxFit.fill,
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(
                          colorTitle: Color(0xFF0F3D57),
                          contentTitle: 'Login',
                          sizeTitle: 24,
                          weightTitle: FontWeight.w700),
                      Container(
                        margin: EdgeInsets.only(
                            bottom: maxheight * 0.02, top: maxheight * 0.02),
                        child: TextFieldWidget(
                            // obscure: false,
                            hintContent: 'youremail@gmail.com',
                            heightTextField: maxheight * 0.1,
                            widthTextField: maxWidth * 0.4),
                      ),
                      TextFieldWidget(
                          obscure: true,
                          hintContent: 'fill your password',
                          heightTextField: maxheight * 0.1,
                          widthTextField: maxWidth * 0.4),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
