import 'package:flutter/material.dart';
import 'package:shoppie/widgets/constant.dart';
import 'package:shoppie/widgets/size_config.dart';

import 'sign_inform.dart';
import 'social_card.dart';

class Body_LoginAccount extends StatefulWidget {
  const Body_LoginAccount({super.key});

  @override
  State<Body_LoginAccount> createState() => _Body_LoginAccountState();
}

class _Body_LoginAccountState extends State<Body_LoginAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
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
            SizedBox(height: getProportionateScreenHeight(20)),
            const SignForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialCard(
                  icon: 'assets/icons/fb_icon.png',
                  press: () {},
                ),
                socialCard(
                  icon: 'assets/icons/insta_icon.png',
                  press: () {},
                ),
              ],
            ),
            Row(
              children: [
                Text('Don\'t have an account? ',
                 style: ()), 
              ],
            )
          ],
        ),
      ),
    ));
  }
}
