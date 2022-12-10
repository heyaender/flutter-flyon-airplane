// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';
import 'package:flyon_airplane_app/ui/widgets/custom_button.dart';
import 'package:flyon_airplane_app/ui/widgets/custom_form_field.dart';

class SignInPages extends StatelessWidget {
  const SignInPages({Key? key}) : super(key: key);

  Widget title() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: 55,
        ),
        child: Text(
          'Welcome Back',
          style: darkText.copyWith(
            fontSize: 30,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  Widget subtitle() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        child: Text(
          'Please sign in to continue',
          style: greyText.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget formSection(BuildContext context) {
    Widget emailInput() {
      return CustomFormField(
        labelText: "Email Address",
        hintText: "example@gmail.com",
        margin: EdgeInsets.only(
          bottom: 20,
        ),
      );
    }

    Widget passwordInput() {
      return CustomFormField(
        labelText: "Password",
        hintText: "Type your password here",
        margin: EdgeInsets.only(
          bottom: 50,
        ),
      );
    }

    Widget signinButton(BuildContext context) {
      return CustomButton(
        title: 'Sign In',
        onTap: () => Navigator.pushNamed(context, '/main'),
      );
    }

    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(
          defaultradius,
        ),
      ),
      child: Column(
        children: [
          emailInput(),
          passwordInput(),
          signinButton(context),
        ],
      ),
    );
  }

  Widget signupTextButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account? ',
            style: greyText.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/signup',
              );
            },
            child: Text(
              'Sign Up',
              style: purpleText.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteCloudColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultmargin,
          ),
          children: [
            title(),
            subtitle(),
            formSection(context),
            signupTextButton(context),
          ],
        ),
      ),
    );
  }
}
