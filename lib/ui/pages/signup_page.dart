// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Text(
        'Join us and get\nyour next journey',
        style: darkText.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
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
                hintText: 'Input your full name',
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
            formSection(),
          ],
        ),
      ),
    );
  }
}
