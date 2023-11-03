import 'package:academykid/common_widget/title_text.dart';
import 'package:flutter/material.dart';

AppBar AppbarCommonWidget({
  required Function() onTapBackFunction,
  required Function() onTapForwardFunction,
  String firstText = 'Kids',
  String secondText = 'Education',
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Container(
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox.fromSize(
                size: Size(40, 40), // button width and height
                child: CircleAvatar(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFF0F3D57),
                    ),
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: onTapBackFunction, // button pressed
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: TitleText(
                    colorTitle: Color(0xFF0F3D57),
                    contentTitle: 'Back',
                    sizeTitle: 20,
                    weightTitle: FontWeight.w700),
              )
            ],
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
                    contentTitle: firstText,
                    sizeTitle: 24,
                    weightTitle: FontWeight.w700),
              ),
              TitleText(
                  colorTitle: Color(0xff06c927),
                  contentTitle: secondText,
                  sizeTitle: 24,
                  weightTitle: FontWeight.w700)
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: TitleText(
                    colorTitle: Color(0xFF0F3D57),
                    contentTitle: 'Next',
                    sizeTitle: 20,
                    weightTitle: FontWeight.w700),
              ),
              SizedBox.fromSize(
                size: Size(40, 40), // button width and height
                child: ClipOval(
                  child: Material(
                    color: Color(0xFF0F3D57), // button color
                    child: InkWell(
                      // splashColor: Color(0xff06c927), // splash color
                      onTap: onTapForwardFunction, // button pressed
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
              ),
            ],
          )
        ],
      ),
    ),
  );
}
