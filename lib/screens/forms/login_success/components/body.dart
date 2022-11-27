import 'package:flutter/material.dart';
import 'package:shoppie/widgets/size_config.dart';

class Body_LoginSuccess extends StatelessWidget {
  const Body_LoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset('', height: SizeConfig.screenHeight * 0.4), // 40%

        SizedBox(height: SizeConfig.screenHeight * 0.08),

        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          DefaultButton(
            text: 'Back to home',
            press: () {},
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
