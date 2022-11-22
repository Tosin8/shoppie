import 'package:flutter/material.dart';

import '../../../../widgets/size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
  }) : super(key: key);

  // final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: Image.asset(
        'assets/icons/mail.png',
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
