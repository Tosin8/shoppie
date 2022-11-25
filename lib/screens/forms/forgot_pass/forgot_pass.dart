import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  static String routeName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoppie'),
      ),
      body: const Body_ForgotPass(),
    );
  }
}
