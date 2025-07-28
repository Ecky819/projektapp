import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontWeight: FontWeight.w900,
    fontFamily: 'SF Pro',
    fontSize: 16,
  );

  static const TextStyle body = TextStyle(
    fontSize: 13,
    height: 1.2,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(84, 95, 113, 1.0),
    fontFamily: 'SF Pro',
  );

  static const TextStyle card = TextStyle(
    fontSize: 11,
    height: 1.2,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(84, 95, 113, 1.0),
    fontFamily: 'SF Pro',
  );

  static const TextStyle drawerUserName = TextStyle(
    fontFamily: 'SF Pro',
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle drawerUserEmail = TextStyle(
    fontFamily: 'SF Pro',
    fontSize: 14,
    color: Colors.white,
  );
}
