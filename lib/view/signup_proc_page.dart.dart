import 'package:academykid/common_widget/appbar_widget.dart';
import 'package:academykid/common_widget/signup1_widget.dart';
import 'package:academykid/common_widget/signup2_widget.dart';
import 'package:academykid/view/account_management_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpProc extends StatefulWidget {
  const SignUpProc({super.key});

  @override
  State<SignUpProc> createState() => _SignUpProcState();
}

class _SignUpProcState extends State<SignUpProc> {
  SignUpWidget1 signUpWidget1 = SignUpWidget1();
  SignUpWidget2 signUpWidget2 = SignUpWidget2();

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxheight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppbarCommonWidget(
        onTapBackFunction: () {
          Get.back();
        },
        onTapForwardFunction: () {
          Get.to(() => AccountManagement());
        },
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 2, top: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              margin: const EdgeInsets.all(8.0),
              height: maxheight * 0.7,
              width: maxWidth * 0.6,
              child: PageView(
                controller: controller,
                children: [
                  signUpWidget1,
                  signUpWidget2,
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    controller.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 34,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 34,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
