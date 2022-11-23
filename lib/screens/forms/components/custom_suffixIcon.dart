import 'package:flutter/material.dart';

import '../../../../widgets/size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,

  required this.image, 
  }) : super(key: key);

  // final String svgIcon;

  final String image; 

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
        'assets/$image',
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
