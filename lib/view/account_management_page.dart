import 'package:academykid/common_widget/border_circle_avatar_widget.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:academykid/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountManagement extends StatefulWidget {
  const AccountManagement({super.key});

  @override
  State<AccountManagement> createState() => _AccountManagementState();
}

class _AccountManagementState extends State<AccountManagement> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: maxheight * 0.02),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            children: [
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
              ), // )
              GestureDetector(
                onTap: () {
                  Get.to(() => HomePage());
                },
                child: Column(
                  children: [
                    BorderCircleAvatarWidget(
                      sizeBorder1: maxWidth * 0.05,
                      sizeBorder2: maxWidth * 0.045,
                      sizeBorder3: maxWidth * 0.04,
                      sizeBorder4: maxWidth * 0.05,
                      linkAssetsAvartar: 'assets/avatars/avatar1.png',
                    ),
                    TitleText(
                        contentTitle: 'Username',
                        sizeTitle: 24,
                        weightTitle: FontWeight.w700)
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.snackbar('Noti', 'You tap on this Plus');
                },
                child: Container(
                  margin: EdgeInsets.only(top: maxheight * 0.03),
                  child: CircleAvatar(
                    radius: maxWidth * 0.045,
                    backgroundColor: Color(0xff06c927),
                    child: CircleAvatar(
                      radius: maxWidth * 0.04,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: maxWidth * 0.035,
                        backgroundColor: Color(0xff06c927),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.add,
                            size: maxWidth * 0.05,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: maxheight * 0.08),
                child: TextButton(
                    onPressed: () {},
                    child: TitleText(
                        contentTitle: 'For Parents',
                        sizeTitle: 20,
                        weightTitle: FontWeight.w700)),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
