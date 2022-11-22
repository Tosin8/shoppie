import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginAccount extends StatefulWidget {
  static var routeName;

  const LoginAccount({super.key});

  @override
  State<LoginAccount> createState() => _LoginAccountState();
}

class _LoginAccountState extends State<LoginAccount> {
  static String routeName = '/LoginAccount';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoppie'),
      ),
      body: const Body_LoginAccount(),
    );
  }
}
