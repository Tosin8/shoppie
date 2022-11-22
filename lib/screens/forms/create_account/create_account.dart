import 'package:flutter/material.dart';

import 'components/body.dart';

class CreateAccount extends StatefulWidget {
  static var routeName;

  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoppie'),
      ),
      body: const Body_CreateAccount(),
    );
  }
}
