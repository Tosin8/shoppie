import 'package:flutter/material.dart';

class socialCard extends StatelessWidget {
  const socialCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration: const BoxDecoration(
        color: Color(0xfff5f6f9),
        shape: BoxShape.circle,
      ),
      child: Image.asset('assets/icons/fb_icon.png'),
    );
  }
}
