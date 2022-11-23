import 'package:flutter/material.dart';

import '../../../widgets/size_config.dart';

class formError extends StatelessWidget {
  const formError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            errors.length, (index) => formErrorText(error: errors[index])));
  }

  Row formErrorText({required String error}) {
    return Row(children: [
      Image.asset(
        'assets/icons/error.png',
        height: getProportionateScreenWidth(14),
        width: getProportionateScreenWidth(14),
      ),
      SizedBox(width: getProportionateScreenWidth(10)),
      Text(error),
    ]);
  }
}
