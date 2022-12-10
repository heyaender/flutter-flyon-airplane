// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flyon_airplane_app/shared/theme.dart';
import 'package:flyon_airplane_app/ui/widgets/custom_button.dart';
import 'package:flyon_airplane_app/ui/widgets/custom_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Text(
        'Join with us and get\nyour next journey',
        style: darkText.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget formSection(BuildContext context) {
    Widget nameInput() {
      return CustomFormField(
        labelText: 'Full Name',
        hintText: 'Type your full name',
        margin: EdgeInsets.only(
          bottom: 20,
        ),
      );
    }

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
        hintText: "Your password",
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        obscureText: true,
      );
    }

    Widget hobbyInput() {
      return CustomFormField(
          labelText: "Hobby",
          hintText: "Type your hobby here",
          margin: EdgeInsets.only(
            bottom: 50,
          ));
    }

    Widget signupButton(BuildContext context) {
      return CustomButton(
        title: 'Sign Up Now',
        onTap: () => Navigator.pushNamed(context, '/bonus'),
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
          nameInput(),
          emailInput(),
          passwordInput(),
          hobbyInput(),
          signupButton(context),
        ],
      ),
    );
  }

  Widget signinTextButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account? ',
            style: greyText.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/signin',
              );
            },
            child: Text(
              'Sign In',
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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      backgroundColor: whiteCloudColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultmargin,
          ),
          children: [
            title(),
            formSection(context),
            signinTextButton(context),
          ],
        ),
      ),
    );
  }
}
