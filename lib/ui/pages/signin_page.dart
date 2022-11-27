// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';

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

  Widget formSection() {
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
          bottom: 50,
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

    Widget signinButton() {
      return SizedBox(
        width: double.infinity,
        height: 55,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                defaultradius,
              ),
            ),
          ),
          child: Text(
            'Sign In',
            style: whiteText.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
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
          signinButton(),
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
            formSection(),
            signupTextButton(context),
          ],
        ),
      ),
    );
  }
}
