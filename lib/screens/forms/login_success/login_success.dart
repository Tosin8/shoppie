import 'package:flutter/material.dart';

class Login_Success extends StatefulWidget {
  const Login_Success({super.key});

  static var routeName;

  @override
  State<Login_Success> createState() => _Login_SuccessState();
}

class _Login_SuccessState extends State<Login_Success> {
  static String routeName = '/Login_Success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(), 
        title: Text('Shoppie'), 
      ),
    );
  }
}
