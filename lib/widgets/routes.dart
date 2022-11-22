import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/forms/create_account/create_account.dart';
import '../screens/forms/sign_in/login.dart';

// making all routes available

final Map<String, WidgetBuilder> routes = {
  CreateAccount.routeName: (context) => const CreateAccount(),
  LoginAccount.routeName: (context) => const LoginAccount(),
};
