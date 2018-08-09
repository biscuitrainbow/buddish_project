import 'package:flutter/material.dart';

class Asset {
  static final String imageLoginBg = 'asset/img/login_bg.png';
  static final String audioBundle = 'asset/audio';

  static final String audio1 = '1.mp3';
  static final String audio2 = '2.mp3';
  static final String audio3 = '3.mp3';
  static final String audio4 = '4.mp3';
  static final String audio5 = '5.mp3';
}

class Dimension {
  static final double screenHorizonPadding = 16.0;
  static final double screenVerticalPadding = 16.0;

  static final double fieldVerticalMargin = 12.0;
}

class AppColors {
  static final Color main = Color.fromRGBO(163, 84, 60, 1.0);
  static final Color secondary = Color(0xFFFCEA88);
  static final Color facebook = Color(0xFF4267B2);
}

class Style {
  static final TextStyle appbarTitleStyle = TextStyle(color: AppColors.main, fontWeight: FontWeight.w600);
  static final TextStyle snackBarMessage = TextStyle(color: Colors.white, fontWeight: FontWeight.w600);
}