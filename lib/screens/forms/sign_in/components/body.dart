import 'package:flutter/material.dart';
import 'package:shoppie/widgets/constant.dart';

class Body_LoginAccount extends StatefulWidget {
  const Body_LoginAccount({super.key});

  @override
  State<Body_LoginAccount> createState() => _Body_LoginAccountState();
}

class _Body_LoginAccountState extends State<Body_LoginAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Text(
          'Welcome Back',
          style: headingStyle,
        ),
        const Text(
          'Sign in with your email and password \n or continue with your social media account',
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}
