// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';

class CustomNewDestination extends StatelessWidget {
  const CustomNewDestination({
    Key? key,
    required this.title,
    required this.city,
    required this.imageUrl,
    this.rating = 0.0,
  }) : super(key: key);

  final String title;
  final String city;
  final String imageUrl;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 327,
      height: 90,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: 6,
                top: 18,
                bottom: 19,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: darkText.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    city,
                    style: greyText.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 16,
            ),
            width: 46,
            height: 24,
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 16,
                  color: yellowColor,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  rating.toString(),
                  style: darkText.copyWith(
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
