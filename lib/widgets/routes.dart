import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/forms/create_account/create_account.dart';

// making all routes available

final Map<String, WidgetBuilder> routes = {
  CreateAccount.routeName: (context) => const CreateAccount(),
};
