import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constant.dart';

ThemeData theme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      toolbarTextStyle: const TextTheme(
        headline6: TextStyle(color: Color(0xFFBDBDBD), fontSize: 18),
      ).bodyText2,
      titleTextStyle: const TextTheme(
        headline6: TextStyle(color: Color(0xFFBDBDBD), fontSize: 18),
      ).headline6,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
