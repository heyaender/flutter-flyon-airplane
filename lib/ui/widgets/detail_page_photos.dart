// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailPagePhotos extends StatelessWidget {
  const DetailPagePhotos({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 6,
        right: 16,
      ),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
