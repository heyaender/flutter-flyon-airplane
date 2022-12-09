// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onTap,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final String title;
  final double width;
  final Function() onTap;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              defaultradius,
            ),
          ),
        ),
        onPressed: () {
          onTap();
        },
        child: Text(
          title,
          style: whiteText.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
