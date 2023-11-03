import 'package:flutter/material.dart';

Padding CircleAvatarWidget(
    {required double widthCircle,
    required double heightCircle,
    required double widthImg,
    required double heightImg,
    required Color backgroundColorAvatar,
    required String linkAssetsAvartar}) {
  return Padding(
    // padding: const EdgeInsets.only(left: 8, right: 8),
    padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
    child: GestureDetector(
      onTap: () {},
      child: Container(
        width: widthCircle,
        height: heightCircle,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColorAvatar,
        ),
        child: Center(
          child: Image.asset(
            'assets/avatars/$linkAssetsAvartar.png',
            width: widthImg,
            height: heightImg,
            fit: BoxFit.contain,
          ),
        ),
      ),
    ),
  );
}
