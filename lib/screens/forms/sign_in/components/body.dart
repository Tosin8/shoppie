import 'package:flutter/material.dart';
import 'package:shoppie/widgets/constant.dart';
import 'package:shoppie/widgets/size_config.dart';

import '../../components/custom_suffixIcon.dart';
import '../../components/form_error.dart';

class Body_LoginAccount extends StatefulWidget {
  const Body_LoginAccount({super.key});

  @override
  State<Body_LoginAccount> createState() => _Body_LoginAccountState();
}

class _Body_LoginAccountState extends State<Body_LoginAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              'Welcome Back',
              style: headingStyle,
            ),
            const Text(
              'Sign in with your email and password \n or continue with your social media account',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            const SignForm(),
          ],
        ),
      ),
    ));
  }
}

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();

  late String email;
  late String password;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          formError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Text('Remember me'),
            const Spacer(),
            const Text(
              'Forgot Password',
              style: TextStyle(),
            ),
          ]),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }

        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: SvgPicture.asset(), - using the svg icon.
        suffixIcon: CustomSuffixIcon(
          image: 'icons/padlock.png',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }

        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }

        return null;
      },
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: SvgPicture.asset(), - using the svg icon.
        suffixIcon: CustomSuffixIcon(
          image: 'icons/mail.png',
        ),
      ),
    );
  }
}
