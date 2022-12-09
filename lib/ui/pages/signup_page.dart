// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flyon_airplane_app/shared/theme.dart';
import 'package:flyon_airplane_app/ui/widgets/custom_button.dart';

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
      return Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: darkText.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6),
            ),
            TextFormField(
              cursorColor: purpleDarkColor,
              decoration: InputDecoration(
                hintText: 'Type your full name here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultradius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultradius,
                  ),
                  borderSide: BorderSide(
                    color: purpleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: darkText.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6),
            ),
            TextFormField(
              cursorColor: purpleDarkColor,
              decoration: InputDecoration(
                hintText: 'example@gmail.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultradius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultradius,
                  ),
                  borderSide: BorderSide(
                    color: purpleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: darkText.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6),
            ),
            TextFormField(
              obscureText: true,
              cursorColor: purpleDarkColor,
              decoration: InputDecoration(
                hintText: 'Type your password here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultradius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultradius,
                  ),
                  borderSide: BorderSide(
                    color: purpleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget hobbyInput() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hobby',
              style: darkText.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6),
            ),
            TextFormField(
              cursorColor: purpleDarkColor,
              decoration: InputDecoration(
                hintText: 'Type your hobby here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultradius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultradius,
                  ),
                  borderSide: BorderSide(
                    color: purpleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
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
