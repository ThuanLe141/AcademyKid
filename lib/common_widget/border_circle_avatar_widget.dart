import 'package:flutter/material.dart';

CircleAvatar BorderCircleAvatarWidget(
    {required double sizeBorder1,
    required double sizeBorder2,
    required double sizeBorder3,
    required double sizeBorder4,
    Color colorBackground = const Color.fromARGB(255, 77, 208, 225),
    required String linkAssetsAvartar}) {
  return CircleAvatar(
    // radius: maxWidth * 0.05,
    radius: sizeBorder1,
    backgroundColor: colorBackground,
    child: CircleAvatar(
      radius: sizeBorder2,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: sizeBorder3,
        backgroundColor: colorBackground,
        child: Container(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            radius: sizeBorder4,
            backgroundColor: colorBackground,
            backgroundImage: AssetImage(linkAssetsAvartar),
          ),
        ),
      ),
    ),
  );
}
                    // CircleAvatar(
                    //   radius: maxWidth * 0.05,
                    //   backgroundColor: Color.fromARGB(255, 77, 208, 225),
                    //   child: CircleAvatar(
                    //     radius: maxWidth * 0.045,
                    //     backgroundColor: Colors.white,
                    //     child: CircleAvatar(
                    //       radius: maxWidth * 0.04,
                    //       backgroundColor: Color.fromARGB(255, 77, 208, 225),
                    //       child: Container(
                    //         padding: EdgeInsets.all(8),
                    //         child: CircleAvatar(
                    //           radius: maxWidth * 0.05,
                    //           backgroundColor:
                    //               Color.fromARGB(255, 77, 208, 225),
                    //           backgroundImage:
                    //               AssetImage('assets/avatars/avatar1.png'),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
