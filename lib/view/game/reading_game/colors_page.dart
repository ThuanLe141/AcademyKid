import 'package:academykid/common_widget/content_text.dart';
import 'package:academykid/common_widget/title_text.dart';
import 'package:flutter/material.dart';

class ColorsGame extends StatefulWidget {
  const ColorsGame({super.key});

  @override
  State<ColorsGame> createState() => _ColorsGameState();
}

class _ColorsGameState extends State<ColorsGame> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        color: Colors.yellow.shade200,
        padding: EdgeInsets.only(top: maxheight * 0.05),
        width: maxWidth,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleText(
                contentTitle: 'Colors',
                sizeTitle: 32,
                weightTitle: FontWeight.w800),
            Container(
              width: maxheight * 0.3,
              height: maxheight * 0.3,
              color: Colors.red,
              child: Center(
                child: ContentText(
                    content: 'Red',
                    sizeContent: 24,
                    weightContent: FontWeight.w800),
              ),
            ),
            Container(
              width: maxheight * 0.3,
              height: maxheight * 0.3,
              color: Colors.yellow,
              child: Center(
                child: ContentText(
                    content: 'Yellow',
                    sizeContent: 24,
                    weightContent: FontWeight.w800),
              ),
            )
          ],
        ),
      ),
    );
  }
}
