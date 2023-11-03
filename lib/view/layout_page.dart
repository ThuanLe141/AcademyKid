import 'package:academykid/common_widget/appbar_widget.dart';
import 'package:academykid/common_widget/circle_avatar_widget.dart';
import 'package:academykid/common_widget/signup1_widget.dart';
import 'package:academykid/common_widget/textfield_widget.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _SignUpInfoState();
}

class _SignUpInfoState extends State<LayoutPage> {
  final PageController controller = PageController();

  SignUpWidget1 signUpWidget1 = SignUpWidget1();

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
      appBar: AppbarCommonWidget(onTapBackFunction: () {
        Get.back();
      }, onTapForwardFunction: () {
        // Get.to(() => StackHelp());
      }),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              // color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20))),
          width: maxWidth * 0.5,
          height: maxheight * 0.7,
          padding: EdgeInsets.only(bottom: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  controller.previousPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear,
                  );
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TitleText(
                      contentTitle: "What's your name ?",
                      sizeTitle: 20,
                      weightTitle: FontWeight.w700),
                  TextFieldWidget(
                      hintContent: 'your name',
                      heightTextField: maxheight * 0.1,
                      widthTextField: maxWidth * 0.3),
                  TitleText(
                      contentTitle: "Select an Avatar",
                      sizeTitle: 20,
                      weightTitle: FontWeight.w700),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatarWidget(
                          widthCircle: 65,
                          heightCircle: 65,
                          widthImg: 50,
                          heightImg: 50,
                          backgroundColorAvatar: Colors.cyan.shade300,
                          linkAssetsAvartar: 'avatar1'),
                      CircleAvatarWidget(
                          widthCircle: 65,
                          heightCircle: 65,
                          widthImg: 50,
                          heightImg: 50,
                          backgroundColorAvatar: Colors.cyan.shade300,
                          linkAssetsAvartar: 'avatar2'),
                      CircleAvatarWidget(
                          widthCircle: 65,
                          heightCircle: 65,
                          widthImg: 50,
                          heightImg: 50,
                          backgroundColorAvatar: Colors.cyan.shade300,
                          linkAssetsAvartar: 'avatar3'),
                      CircleAvatarWidget(
                          widthCircle: 65,
                          heightCircle: 65,
                          widthImg: 50,
                          heightImg: 50,
                          backgroundColorAvatar: Colors.cyan.shade300,
                          linkAssetsAvartar: 'avatar1'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatarWidget(
                          widthCircle: 65,
                          heightCircle: 65,
                          widthImg: 50,
                          heightImg: 50,
                          backgroundColorAvatar: Colors.cyan.shade300,
                          linkAssetsAvartar: 'avatar1'),
                      CircleAvatarWidget(
                          widthCircle: 65,
                          heightCircle: 65,
                          widthImg: 50,
                          heightImg: 50,
                          backgroundColorAvatar: Colors.cyan.shade300,
                          linkAssetsAvartar: 'avatar3'),
                      CircleAvatarWidget(
                          widthCircle: 65,
                          heightCircle: 65,
                          widthImg: 50,
                          heightImg: 50,
                          backgroundColorAvatar: Colors.cyan.shade300,
                          linkAssetsAvartar: 'avatar2'),
                      CircleAvatarWidget(
                          widthCircle: 65,
                          heightCircle: 65,
                          widthImg: 50,
                          heightImg: 50,
                          backgroundColorAvatar: Colors.cyan.shade300,
                          linkAssetsAvartar: 'avatar1'),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear,
                  );
                },
                icon: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
      ),
    );
  }
}
