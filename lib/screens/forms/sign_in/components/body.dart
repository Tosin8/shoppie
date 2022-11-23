import 'package:flutter/material.dart';
import 'package:shoppie/widgets/constant.dart';
import 'package:shoppie/widgets/size_config.dart';

import 'custom_suffixIcon.dart';

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
          Row(chidren: [
            Image.asset(), 
          ]), 
          DefaultButton(
            text: 'Continue', 
            press: (){}, 
          ), 
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
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
      validator: (value) {
        if(value.isEmpty) {
          setState((){
            errors.add('Please enter your mail'); 
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
