import 'package:academykid/common_widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.fromSize(
                  size: Size(40, 40), // button width and height
                  child: ClipOval(
                    child: Material(
                      color: Color(0xFF0F3D57), // button color
                      child: InkWell(
                        splashColor: Color(0xff06c927), // splash color
                        onTap: () {
                          Get.back();
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ), // icon
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center, // use aligment
                      child: Image.asset('assets/logo.png',
                          height: 38, width: 38, fit: BoxFit.cover),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 6, left: 6),
                      child: TitleText(
                          colorTitle: Color(0xFF0F3D57),
                          contentTitle: 'Academy',
                          sizeTitle: 20,
                          weightTitle: FontWeight.w700),
                    ),
                    TitleText(
                        colorTitle: Color(0xff06c927),
                        contentTitle: 'Kids',
                        sizeTitle: 20,
                        weightTitle: FontWeight.w700)
                  ],
                ),
                SizedBox.fromSize(
                  size: Size(40, 40), // button width and height
                  child: ClipOval(
                    child: Material(
                      color: Color(0xFF0F3D57), // button color
                      child: InkWell(
                        splashColor: Color(0xff06c927), // splash color
                        onTap: () {}, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 30,
                            ), // icon
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Column(
              children: [
                TitleText(
                    colorTitle: Color(0xFF0F3D57),
                    contentTitle: 'What is your email adress',
                    sizeTitle: 24,
                    weightTitle: FontWeight.w700),
                SizedBox(
                  height: maxheight * 0.12,
                  width: maxWidth * 0.4,
                  child: TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide:
                            BorderSide(color: Color(0xFF0F3D57), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide:
                            BorderSide(color: Color(0xFF0F3D57), width: 2.0),
                      ),
                      hintText: 'name@gmail.com',
                      hintStyle: GoogleFonts.signikaNegative(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.2,
                          color: Colors.black54),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
