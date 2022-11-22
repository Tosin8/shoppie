import 'package:flutter/material.dart';
import 'package:shoppie/widgets/constant.dart';

class Body_CreateAccount extends StatefulWidget {
  const Body_CreateAccount({super.key});

  @override
  State<Body_CreateAccount> createState() => _Body_CreateAccountState();
}

class _Body_CreateAccountState extends State<Body_CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Register Account',
            style: headingStyle,
          ),
          const Text(
            'Complete your details or continue \n with social media',
            textAlign: TextAlign.center,
          ),
          const SignUpForm(),
        ],
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirm_password;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue,
          onChanged: (Value) {
            if (value.isNotEmpty) {
              removeError(error: kMailNullError);
            } else if (emailValidatorRegExp.hasMatch(value)) {
              removeError(error: kInvalidEmailError);
            }
            return;
          },
          validator: (value) {
            if (value.isEmpty) {
              addError(error: kEmailNullError);
              return '';
            } else if (!emailValidatorRegExp.hasMatch(value)) {
              addError(error: kInvalidEmailError);
              return '';
            }
            return null;
          },
          decoration: const InputDecoration(
            labelText: 'Email',
            hintText: 'Enter your email',
          ),
        )
      ],
    ));
  }
}
