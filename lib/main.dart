import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppie/widgets/constant.dart';

import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shoppie',
        theme: theme(),
        home: const HomePage());
  }
}

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
