// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';

class InterestList extends StatelessWidget {
  const InterestList({
    Key? key,
    required this.textItem,
  }) : super(key: key);

  final String textItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 6,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/fi_check-circle.png',
                  height: 16,
                  width: 16,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  textItem,
                  style: darkText.copyWith(
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
