import 'package:academykid/common_widget/circle_avatar_widget.dart';
import 'package:academykid/common_widget/textfield_widget.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:flutter/material.dart';

class SignUpWidget1 extends StatefulWidget {
  const SignUpWidget1({super.key});

  @override
  State<SignUpWidget1> createState() => _SignUpWidget1State();
}

class _SignUpWidget1State extends State<SignUpWidget1> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TitleText(
            contentTitle: "What's your name ?",
            sizeTitle: 22,
            weightTitle: FontWeight.w700),
        TextFieldWidget(
            hintContent: 'your name',
            heightTextField: maxheight * 0.1,
            widthTextField: maxWidth * 0.3),
        TitleText(
            contentTitle: "Select an Avatar",
            sizeTitle: 22,
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
    );
  }
}
