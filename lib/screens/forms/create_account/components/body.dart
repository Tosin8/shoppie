import 'package:flutter/material.dart';
import 'package:shoppie/widgets/constant.dart';

class Body_CreateAccount extends StatefulWidget {
  const Body_CreateAccount({super.key});

  @override
  State<Body_CreateAccount> createState() => _Body_CreateAccountState();
}

class _Body_CreateAccountState extends State<Body_CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Register Account',
            style: headingStyle,
          ),
          const Text(
            'Complete your details or continue \n with social media',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
