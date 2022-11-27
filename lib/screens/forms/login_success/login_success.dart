import 'package:flutter/material.dart';
import 'package:shoppie/screens/forms/login_success/components/body.dart';

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
        leading: const SizedBox(),
        title: const Text('Shoppie'),
      ),
      body: const Body_LoginSuccess(),
    );
  }
}
