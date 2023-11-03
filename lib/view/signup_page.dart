import 'package:academykid/common_widget/appbar_widget.dart';
import 'package:academykid/common_widget/content_text.dart';
import 'package:academykid/common_widget/textfield_widget.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:academykid/view/signup_verify_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;

    return Scaffold(
        appBar: AppbarCommonWidget(onTapBackFunction: () {
          Get.back();
        }, onTapForwardFunction: () {
          Get.to(() => SignUpVerify());
        }),
        body: Container(
          margin: EdgeInsets.only(top: maxheight * 0.08),
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
                        // color: Color(0xFF0F3D57),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          'assets/img1.png',
                          height: maxheight * 0.25,
                          width: maxWidth * 0.2,
                          fit: BoxFit.fill,
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(
                          colorTitle: Color(0xFF0F3D57),
                          contentTitle: 'What is your email adress',
                          sizeTitle: 24,
                          weightTitle: FontWeight.w700),
                      TextFieldWidget(
                          hintContent: 'name@gmail.com',
                          heightTextField: maxheight * 0.12,
                          widthTextField: maxWidth * 0.45,
                          obscure: false),
                      ContentText(
                          colorContent: Colors.black54,
                          content:
                              "A grown-up account is required to save children's progress.",
                          sizeContent: 14,
                          weightContent: FontWeight.w800)
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
