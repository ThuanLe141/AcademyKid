import 'package:academykid/common_widget/border_circle_avatar_widget.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:academykid/view/account_management_page.dart';
import 'package:academykid/view/game/reading_game/home_page.dart';
import 'package:academykid/view/library_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      body: Container(
        padding: EdgeInsets.only(
            top: maxheight * 0.02,
            left: maxheight * 0.04,
            right: maxheight * 0.04),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                width: maxWidth * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => LibraryPage());
                      },
                      child: Image.asset(
                        'assets/img3.png',
                        width: maxheight * 0.15,
                        height: maxheight * 0.15,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: maxheight * 0.23,
                    width: maxheight * 0.25,
                  ),
                  TitleText(
                      contentTitle: 'Kids',
                      sizeTitle: 28,
                      colorTitle: Color(0xff06c927),
                      weightTitle: FontWeight.w700),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: TitleText(
                        contentTitle: 'Education',
                        sizeTitle: 28,
                        weightTitle: FontWeight.w700),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Get.to(() => AccountManagement());
                },
                child: Container(
                  width: maxWidth * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: TitleText(
                            contentTitle: 'Username',
                            sizeTitle: 18,
                            weightTitle: FontWeight.w700),
                      ),
                      BorderCircleAvatarWidget(
                        sizeBorder1: maxWidth * 0.04,
                        sizeBorder2: maxWidth * 0.035,
                        sizeBorder3: maxWidth * 0.03,
                        sizeBorder4: maxWidth * 0.04,
                        linkAssetsAvartar: 'assets/avatars/avatar1.png',
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            GestureDetector(
              onTap: () {
                Get.to(() => HomePageReadingGame());
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/background.png',
                    width: maxWidth * 0.48,
                    height: maxheight * 0.7,
                  ),
                  Column(
                    children: [
                      BorderCircleAvatarWidget(
                          sizeBorder1: maxWidth * 0.06,
                          sizeBorder2: maxWidth * 0.055,
                          sizeBorder3: maxWidth * 0.052,
                          sizeBorder4: maxWidth * 0.04,
                          colorBackground: Color(0xff06c927),
                          linkAssetsAvartar: 'assets/playicon.png'),
                      TitleText(
                          contentTitle: 'PLAY',
                          sizeTitle: 42,
                          colorTitle: Color(0xff06c927),
                          weightTitle: FontWeight.w800)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
