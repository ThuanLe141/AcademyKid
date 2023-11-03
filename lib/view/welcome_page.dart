import 'package:academykid/common_widget/button_outline_widget.dart';
import 'package:academykid/common_widget/button_widget.dart';
import 'package:academykid/common_widget/content_text.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:academykid/view/login_page.dart';
import 'package:academykid/view/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return Container(
              height: maxheight,
              width: maxWidth,
              margin: EdgeInsets.only(top: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center, // use aligment
                        child: Image.asset('assets/logo.png',
                            height: 100, width: 100, fit: BoxFit.cover),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: TitleText(
                                      colorTitle: Color(0xFF0F3D57),
                                      contentTitle: 'Kids',
                                      sizeTitle: 30,
                                      weightTitle: FontWeight.w700)),
                              TitleText(
                                  colorTitle: Color(0xff06c927),
                                  contentTitle: 'Education',
                                  sizeTitle: 30,
                                  weightTitle: FontWeight.w700)
                            ],
                          ),
                          ContentText(
                              colorContent: Colors.black54,
                              content:
                                  'Inspire of lifetime of learning and discovery!',
                              sizeContent: 16,
                              weightContent: FontWeight.w300),
                        ],
                      ),
                    ],
                  ),
                  ButtonCommonWidget(
                      onPressed: () {
                        Get.to(() => Login());
                      },
                      buttonContent: "Login",
                      widthButton: 240,
                      heightButton: 40,
                      buttonColor: Color(0xff06c927),
                      textColor: Colors.white),
                  OutlineButtonCommonWidget(
                    onPressed: () {
                      Get.to(SignUp());
                    },
                    buttonContent: 'Sign up with Email',
                    widthButton: 240,
                    heightButton: 40,
                  )
                ],
              ),
            ); //rest of your landscape code)
          } else {
            return SingleChildScrollView(); //rest of you portrait code)
          }
        },
      ),
    );
  }
}
