import 'package:flutter/material.dart';

const kPrimaryColor = Color(0XFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);

const kSecondaryColor = Color(0xFF979797);

const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

const greyColor = Colors.grey;
const textColor = Colors.black;

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r'^[a-zA-Z0-9,]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

const String kEmailNullError = 'Please Enter your email';
const String kInvalidEmailError = 'Please Enter Valid Email';
const String kPassNullError = 'Please Enter your password';
const String kShortPassError = 'Password is too short';
const String kMatchPassError = 'Passwords don\'t match';
