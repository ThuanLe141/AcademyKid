import 'package:academykid/common_widget/content_text.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:academykid/view/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                                  margin: EdgeInsets.only(right: 12),
                                  child: TitleText(
                                      colorTitle: Color(0xFF0F3D57),
                                      contentTitle: 'Academy',
                                      sizeTitle: 30,
                                      weightTitle: FontWeight.w700)),
                              TitleText(
                                  colorTitle: Color(0xff06c927),
                                  contentTitle: 'Kids',
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
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff06c927),
                          fixedSize: const Size(240, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: ContentText(
                          colorContent: Colors.white,
                          content: "Login",
                          sizeContent: 22,
                          weightContent: FontWeight.w900)),
                  OutlinedButton(
                    onPressed: () {
                      Get.to(() => SignUp());
                    },
                    style: ElevatedButton.styleFrom(
                        // backgroundColor: Colors.pink,
                        fixedSize: const Size(240, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          color: Color(0xFF0F3D57),
                          size: 20.0,
                        ),
                        Text(
                          'Sign up with Email',
                          style: GoogleFonts.signikaNegative(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.2,
                              color: Color(0xFF0F3D57)),
                        ),
                      ],
                    ),
                  ),
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
