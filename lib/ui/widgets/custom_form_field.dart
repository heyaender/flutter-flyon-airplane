// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    // required this.controller,
    this.obscureText = false,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  // final TextEditingController controller;
  final bool obscureText;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
          ),
          TextFormField(
            cursorColor: purpleDarkColor,
            decoration: InputDecoration(
              hintText: hintText,
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
}
