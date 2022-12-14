import 'package:flutter/material.dart';
import 'package:shoppie/screens/forms/sign_in/login.dart';
import 'package:shoppie/widgets/theme.dart';

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
        home: const LoginAccount());
  }
}
