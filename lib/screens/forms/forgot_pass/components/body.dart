import 'package:flutter/material.dart';
import 'package:shoppie/widgets/size_config.dart';

import 'forgot_passform.dart';

class Body_ForgotPass extends StatelessWidget {
  const Body_ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Text(
            'Forgot Password',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(28),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Please enter your email and we will send \n you a link to return to your account',
            textAlign: TextAlign.center,
          ),
          const ForgotPassForm(),
        ],
      ),
    );
  }
}
