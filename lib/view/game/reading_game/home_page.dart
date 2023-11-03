import 'package:academykid/common_widget/title_text.dart';
import 'package:academykid/view/game/reading_game/colors_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageReadingGame extends StatefulWidget {
  const HomePageReadingGame({super.key});

  @override
  State<HomePageReadingGame> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageReadingGame> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;

    return Scaffold(
        body: ListView(
      children: [
        Container(
          width: maxWidth,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => ColorsGame());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: maxheight * 0.3,
                  width: maxWidth,
                  color: Colors.yellow.shade200,
                  child: TitleText(
                      contentTitle: 'Colors',
                      sizeTitle: 36,
                      weightTitle: FontWeight.w700),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: maxheight * 0.3,
                width: maxWidth,
                color: Colors.blue.shade200,
                child: TitleText(
                    contentTitle: '123',
                    sizeTitle: 36,
                    weightTitle: FontWeight.w700),
              ),
              Container(
                alignment: Alignment.center,
                height: maxheight * 0.3,
                width: maxWidth,
                color: Colors.greenAccent.shade200,
                child: TitleText(
                    contentTitle: 'ABC',
                    sizeTitle: 36,
                    weightTitle: FontWeight.w700),
              ),
              Container(
                alignment: Alignment.center,
                height: maxheight * 0.3,
                width: maxWidth,
                color: Colors.pink.shade100,
                child: TitleText(
                    contentTitle: 'Animals',
                    sizeTitle: 36,
                    weightTitle: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
