import 'package:flutter/material.dart';

import '../../../../widgets/size_config.dart';

class socialCard extends StatelessWidget {
  const socialCard({
    Key? key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(12)),
          height: getProportionateScreenHeight(40),
          width: getProportionateScreenWidth(40),
          decoration: const BoxDecoration(
            color: Color(0xfff5f6f9),
            shape: BoxShape.circle,
          ),
          child: Image.asset(icon),
        ));
  }
}
