import 'package:flutter/material.dart';

import '../../../../widgets/constant.dart';
import '../../../../widgets/size_config.dart';
import '../../forgot_pass/forgot_pass.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          style: (TextStyle(
            fontSize: getProportionateScreenWidth(16),
          )),
        ),
        GestureDetector(
          onTap: () =>
              Navigator.popAndPushNamed(context, ForgotPassword.routeName),
          child: Text(
            'Sign Up',
            style: (TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor,
            )),
          ),
        ),
      ],
    );
  }
}
