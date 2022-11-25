import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoppie/screens/forms/forgot_pass/forgot_pass.dart';

import '../screens/forms/create_account/create_account.dart';
import '../screens/forms/sign_in/login.dart';

// making all routes available

final Map<String, WidgetBuilder> routes = {
  CreateAccount.routeName: (context) => const CreateAccount(),
  LoginAccount.routeName: (context) => const LoginAccount(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
};
