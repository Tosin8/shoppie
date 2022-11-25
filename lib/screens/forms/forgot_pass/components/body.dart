import 'package:flutter/material.dart';
import 'package:shoppie/widgets/size_config.dart';

class Body_ForgotPass extends StatelessWidget {
  const Body_ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Forgot Password',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(28), color: Colors.black),
        )
      ],
    );
  }
}
